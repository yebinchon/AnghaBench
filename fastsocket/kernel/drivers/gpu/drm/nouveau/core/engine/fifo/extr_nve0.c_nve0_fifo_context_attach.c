
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int offset; int node; } ;
struct nve0_fifo_base {TYPE_4__ vma; int vm; } ;
struct nouveau_object {int engine; scalar_t__ parent; } ;
struct nouveau_engctx {TYPE_4__ vma; int vm; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int addr; } ;


 int EINVAL ;







 int NV_MEM_ACCESS_RW ;
 int lower_32_bits (int ) ;
 struct nouveau_bar* nouveau_bar (struct nouveau_object*) ;
 int nouveau_gpuobj_map_vm (TYPE_1__*,int ,int ,TYPE_4__*) ;
 TYPE_2__* nv_engctx (struct nve0_fifo_base*) ;
 int nv_engidx (int ) ;
 TYPE_1__* nv_gpuobj (struct nve0_fifo_base*) ;
 int nv_wo32 (struct nve0_fifo_base*,int,int) ;
 int stub1 (struct nouveau_bar*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nve0_fifo_context_attach(struct nouveau_object *parent,
    struct nouveau_object *object)
{
 struct nouveau_bar *bar = nouveau_bar(parent);
 struct nve0_fifo_base *base = (void *)parent->parent;
 struct nouveau_engctx *ectx = (void *)object;
 u32 addr;
 int ret;

 switch (nv_engidx(object->engine)) {
 case 129 : return 0;
 case 131 :
 case 133:
 case 132: addr = 0x0210; break;
 case 134 : addr = 0x0270; break;
 case 128 : addr = 0x0250; break;
 case 130 : addr = 0x0260; break;
 default:
  return -EINVAL;
 }

 if (!ectx->vma.node) {
  ret = nouveau_gpuobj_map_vm(nv_gpuobj(ectx), base->vm,
         NV_MEM_ACCESS_RW, &ectx->vma);
  if (ret)
   return ret;

  nv_engctx(ectx)->addr = nv_gpuobj(base)->addr >> 12;
 }

 nv_wo32(base, addr + 0x00, lower_32_bits(ectx->vma.offset) | 4);
 nv_wo32(base, addr + 0x04, upper_32_bits(ectx->vma.offset));
 bar->flush(bar);
 return 0;
}
