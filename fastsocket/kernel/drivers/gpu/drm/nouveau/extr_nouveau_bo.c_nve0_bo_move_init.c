
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_channel {int dummy; } ;


 int BEGIN_NVC0 (struct nouveau_channel*,int ,int,int) ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int ) ;
 int RING_SPACE (struct nouveau_channel*,int) ;

__attribute__((used)) static int
nve0_bo_move_init(struct nouveau_channel *chan, u32 handle)
{
 int ret = RING_SPACE(chan, 2);
 if (ret == 0) {
  BEGIN_NVC0(chan, NvSubCopy, 0x0000, 1);
  OUT_RING (chan, handle);
  FIRE_RING (chan);
 }
 return ret;
}
