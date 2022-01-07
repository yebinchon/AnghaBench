
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int refcount; struct nouveau_object* parent; } ;
struct nouveau_mm {scalar_t__ block_size; } ;
struct nouveau_mem {int dummy; } ;
struct nouveau_instobj {int dummy; } ;
struct nouveau_instmem {int (* alloc ) (struct nouveau_instmem*,struct nouveau_object*,int,int,struct nouveau_object**) ;} ;
struct nouveau_gpuobj {int flags; int size; int heap; TYPE_3__* node; int addr; struct nouveau_object* parent; } ;
struct nouveau_bar {int (* alloc ) (struct nouveau_bar*,struct nouveau_object*,struct nouveau_mem*,struct nouveau_object**) ;} ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {struct nouveau_mm heap; int addr; } ;
struct TYPE_4__ {int size; int addr; } ;


 int EINVAL ;
 int NVOBJ_FLAG_HEAP ;
 int NVOBJ_FLAG_ZERO_ALLOC ;
 int NV_GPUOBJ_CLASS ;
 int atomic_inc (int *) ;
 int max (int,int) ;
 struct nouveau_bar* nouveau_bar (struct nouveau_object*) ;
 struct nouveau_instmem* nouveau_instmem (struct nouveau_object*) ;
 int nouveau_mm_head (struct nouveau_mm*,int,int,int,int ,TYPE_3__**) ;
 int nouveau_mm_init (int *,int ,int,int) ;
 int nouveau_object_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int nv_error (struct nouveau_object*,char*) ;
 TYPE_2__* nv_gpuobj (struct nouveau_object*) ;
 TYPE_1__* nv_memobj (struct nouveau_object*) ;
 struct nouveau_object* nv_pclass (struct nouveau_object*,int) ;
 int nv_wo32 (struct nouveau_gpuobj*,int,int) ;
 int stub1 (struct nouveau_instmem*,struct nouveau_object*,int,int,struct nouveau_object**) ;
 int stub2 (struct nouveau_bar*,struct nouveau_object*,struct nouveau_mem*,struct nouveau_object**) ;
 scalar_t__ unlikely (int ) ;

int
nouveau_gpuobj_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 pclass,
         struct nouveau_object *pargpu,
         u32 size, u32 align, u32 flags,
         int length, void **pobject)
{
 struct nouveau_instmem *imem = nouveau_instmem(parent);
 struct nouveau_bar *bar = nouveau_bar(parent);
 struct nouveau_gpuobj *gpuobj;
 struct nouveau_mm *heap = ((void*)0);
 int ret, i;
 u64 addr;

 *pobject = ((void*)0);

 if (pargpu) {
  while ((pargpu = nv_pclass(pargpu, NV_GPUOBJ_CLASS))) {
   if (nv_gpuobj(pargpu)->heap.block_size)
    break;
   pargpu = pargpu->parent;
  }

  if (unlikely(pargpu == ((void*)0))) {
   nv_error(parent, "no gpuobj heap\n");
   return -EINVAL;
  }

  addr = nv_gpuobj(pargpu)->addr;
  heap = &nv_gpuobj(pargpu)->heap;
  atomic_inc(&parent->refcount);
 } else {
  ret = imem->alloc(imem, parent, size, align, &parent);
  pargpu = parent;
  if (ret)
   return ret;

  addr = nv_memobj(pargpu)->addr;
  size = nv_memobj(pargpu)->size;

  if (bar && bar->alloc) {
   struct nouveau_instobj *iobj = (void *)parent;
   struct nouveau_mem **mem = (void *)(iobj + 1);
   struct nouveau_mem *node = *mem;
   if (!bar->alloc(bar, parent, node, &pargpu)) {
    nouveau_object_ref(((void*)0), &parent);
    parent = pargpu;
   }
  }
 }

 ret = nouveau_object_create_(parent, engine, oclass, pclass |
         NV_GPUOBJ_CLASS, length, pobject);
 nouveau_object_ref(((void*)0), &parent);
 gpuobj = *pobject;
 if (ret)
  return ret;

 gpuobj->parent = pargpu;
 gpuobj->flags = flags;
 gpuobj->addr = addr;
 gpuobj->size = size;

 if (heap) {
  ret = nouveau_mm_head(heap, 1, size, size,
          max(align, (u32)1), &gpuobj->node);
  if (ret)
   return ret;

  gpuobj->addr += gpuobj->node->offset;
 }

 if (gpuobj->flags & NVOBJ_FLAG_HEAP) {
  ret = nouveau_mm_init(&gpuobj->heap, 0, gpuobj->size, 1);
  if (ret)
   return ret;
 }

 if (flags & NVOBJ_FLAG_ZERO_ALLOC) {
  for (i = 0; i < gpuobj->size; i += 4)
   nv_wo32(gpuobj, i, 0x00000000);
 }

 return ret;
}
