
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {TYPE_2__ vblank; } ;
struct nvc0_software_chan {TYPE_1__ base; } ;
struct nouveau_object {int parent; } ;


 scalar_t__ nv_engctx (int ) ;

__attribute__((used)) static int
nvc0_software_mthd_vblsem_offset(struct nouveau_object *object, u32 mthd,
     void *args, u32 size)
{
 struct nvc0_software_chan *chan = (void *)nv_engctx(object->parent);
 u64 data = *(u32 *)args;
 if (mthd == 0x0400) {
  chan->base.vblank.offset &= 0x00ffffffffULL;
  chan->base.vblank.offset |= data << 32;
 } else {
  chan->base.vblank.offset &= 0xff00000000ULL;
  chan->base.vblank.offset |= data;
 }
 return 0;
}
