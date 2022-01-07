
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_channel {int dummy; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int NvNotify0 ;
 int NvSubCopy ;
 int OUT_RING (struct nouveau_channel*,int ) ;
 int RING_SPACE (struct nouveau_channel*,int) ;

__attribute__((used)) static int
nv04_bo_move_init(struct nouveau_channel *chan, u32 handle)
{
 int ret = RING_SPACE(chan, 4);
 if (ret == 0) {
  BEGIN_NV04(chan, NvSubCopy, 0x0000, 1);
  OUT_RING (chan, handle);
  BEGIN_NV04(chan, NvSubCopy, 0x0180, 1);
  OUT_RING (chan, NvNotify0);
 }

 return ret;
}
