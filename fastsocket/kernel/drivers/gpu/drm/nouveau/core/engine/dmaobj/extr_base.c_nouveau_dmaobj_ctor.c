
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv_dma_class {int flags; int conf0; int limit; int start; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_gpuobj {int conf0; int limit; int start; int access; int target; } ;
struct nouveau_dmaobj {int conf0; int limit; int start; int access; int target; } ;
struct nouveau_dmaeng {int (* bind ) (struct nouveau_dmaeng*,struct nouveau_object*,struct nouveau_gpuobj*,struct nouveau_gpuobj**) ;} ;


 int EINVAL ;

 int NV_DMA_ACCESS_MASK ;





 int NV_DMA_TARGET_MASK ;




 int NV_MEM_ACCESS_RO ;
 int NV_MEM_ACCESS_RW ;
 int NV_MEM_ACCESS_VM ;
 int NV_MEM_ACCESS_WO ;
 int NV_MEM_TARGET_PCI ;
 int NV_MEM_TARGET_PCI_NOSNOOP ;
 int NV_MEM_TARGET_VM ;
 int NV_MEM_TARGET_VRAM ;
 int nouveau_object_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,struct nouveau_gpuobj**) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int nv_mclass (struct nouveau_object*) ;
 struct nouveau_object* nv_object (struct nouveau_gpuobj*) ;
 int stub1 (struct nouveau_dmaeng*,struct nouveau_object*,struct nouveau_gpuobj*,struct nouveau_gpuobj**) ;

__attribute__((used)) static int
nouveau_dmaobj_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nouveau_dmaeng *dmaeng = (void *)engine;
 struct nouveau_dmaobj *dmaobj;
 struct nouveau_gpuobj *gpuobj;
 struct nv_dma_class *args = data;
 int ret;

 if (size < sizeof(*args))
  return -EINVAL;

 ret = nouveau_object_create(parent, engine, oclass, 0, &dmaobj);
 *pobject = nv_object(dmaobj);
 if (ret)
  return ret;

 switch (args->flags & NV_DMA_TARGET_MASK) {
 case 129:
  dmaobj->target = NV_MEM_TARGET_VM;
  break;
 case 128:
  dmaobj->target = NV_MEM_TARGET_VRAM;
  break;
 case 131:
  dmaobj->target = NV_MEM_TARGET_PCI;
  break;
 case 130:
 case 132:
  dmaobj->target = NV_MEM_TARGET_PCI_NOSNOOP;
  break;
 default:
  return -EINVAL;
 }

 switch (args->flags & NV_DMA_ACCESS_MASK) {
 case 134:
  dmaobj->access = NV_MEM_ACCESS_VM;
  break;
 case 136:
  dmaobj->access = NV_MEM_ACCESS_RO;
  break;
 case 133:
  dmaobj->access = NV_MEM_ACCESS_WO;
  break;
 case 135:
  dmaobj->access = NV_MEM_ACCESS_RW;
  break;
 default:
  return -EINVAL;
 }

 dmaobj->start = args->start;
 dmaobj->limit = args->limit;
 dmaobj->conf0 = args->conf0;

 switch (nv_mclass(parent)) {
 case 137:

  break;
 default:
  ret = dmaeng->bind(dmaeng, *pobject, dmaobj, &gpuobj);
  if (ret == 0) {
   nouveau_object_ref(((void*)0), pobject);
   *pobject = nv_object(gpuobj);
  }
  break;
 }

 return ret;
}
