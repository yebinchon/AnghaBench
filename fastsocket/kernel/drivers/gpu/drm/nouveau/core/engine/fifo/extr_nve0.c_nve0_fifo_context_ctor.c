
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nve0_fifo_base {TYPE_1__* pgd; int vm; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_5__ {int vm; } ;
struct TYPE_4__ {int addr; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int lower_32_bits (int ) ;
 TYPE_3__* nouveau_client (struct nouveau_object*) ;
 int nouveau_fifo_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int,int,int ,struct nve0_fifo_base**) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,TYPE_1__**) ;
 int nouveau_vm_ref (int ,int *,TYPE_1__*) ;
 struct nouveau_object* nv_object (struct nve0_fifo_base*) ;
 int nv_wo32 (struct nve0_fifo_base*,int,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nve0_fifo_context_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nve0_fifo_base *base;
 int ret;

 ret = nouveau_fifo_context_create(parent, engine, oclass, ((void*)0), 0x1000,
              0x1000, NVOBJ_FLAG_ZERO_ALLOC, &base);
 *pobject = nv_object(base);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x10000, 0x1000, 0, &base->pgd);
 if (ret)
  return ret;

 nv_wo32(base, 0x0200, lower_32_bits(base->pgd->addr));
 nv_wo32(base, 0x0204, upper_32_bits(base->pgd->addr));
 nv_wo32(base, 0x0208, 0xffffffff);
 nv_wo32(base, 0x020c, 0x000000ff);

 ret = nouveau_vm_ref(nouveau_client(parent)->vm, &base->vm, base->pgd);
 if (ret)
  return ret;

 return 0;
}
