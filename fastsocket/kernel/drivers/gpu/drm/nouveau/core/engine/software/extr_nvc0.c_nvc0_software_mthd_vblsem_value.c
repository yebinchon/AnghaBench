
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ vblank; } ;
struct nvc0_software_chan {TYPE_2__ base; } ;
struct nouveau_object {int parent; } ;


 scalar_t__ nv_engctx (int ) ;

__attribute__((used)) static int
nvc0_software_mthd_vblsem_value(struct nouveau_object *object, u32 mthd,
    void *args, u32 size)
{
 struct nvc0_software_chan *chan = (void *)nv_engctx(object->parent);
 chan->base.vblank.value = *(u32 *)args;
 return 0;
}
