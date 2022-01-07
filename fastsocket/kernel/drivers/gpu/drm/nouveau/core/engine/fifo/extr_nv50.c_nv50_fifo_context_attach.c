
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct nv50_fifo_base {int eng; } ;
struct nouveau_object {int engine; scalar_t__ parent; } ;
struct nouveau_gpuobj {scalar_t__ addr; scalar_t__ size; } ;
struct nouveau_bar {int (* flush ) (struct nouveau_bar*) ;} ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int addr; } ;


 int EINVAL ;



 int lower_32_bits (scalar_t__) ;
 struct nouveau_bar* nouveau_bar (struct nouveau_object*) ;
 TYPE_2__* nv_engctx (struct nouveau_gpuobj*) ;
 int nv_engidx (int ) ;
 TYPE_1__* nv_gpuobj (struct nv50_fifo_base*) ;
 int nv_wo32 (int ,int,int) ;
 int stub1 (struct nouveau_bar*) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int
nv50_fifo_context_attach(struct nouveau_object *parent,
    struct nouveau_object *object)
{
 struct nouveau_bar *bar = nouveau_bar(parent);
 struct nv50_fifo_base *base = (void *)parent->parent;
 struct nouveau_gpuobj *ectx = (void *)object;
 u64 limit = ectx->addr + ectx->size - 1;
 u64 start = ectx->addr;
 u32 addr;

 switch (nv_engidx(object->engine)) {
 case 128 : return 0;
 case 130 : addr = 0x0000; break;
 case 129 : addr = 0x0060; break;
 default:
  return -EINVAL;
 }

 nv_engctx(ectx)->addr = nv_gpuobj(base)->addr >> 12;
 nv_wo32(base->eng, addr + 0x00, 0x00190000);
 nv_wo32(base->eng, addr + 0x04, lower_32_bits(limit));
 nv_wo32(base->eng, addr + 0x08, lower_32_bits(start));
 nv_wo32(base->eng, addr + 0x0c, upper_32_bits(limit) << 24 |
     upper_32_bits(start));
 nv_wo32(base->eng, addr + 0x10, 0x00000000);
 nv_wo32(base->eng, addr + 0x14, 0x00000000);
 bar->flush(bar);
 return 0;
}
