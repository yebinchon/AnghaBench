
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_channel {int vram; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int ,int) ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NV11_SUBCHAN_DMA_SEMAPHORE ;
 int NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH ;
 int NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int
nv84_fence_emit32(struct nouveau_channel *chan, u64 virtual, u32 sequence)
{
 int ret = RING_SPACE(chan, 8);
 if (ret == 0) {
  BEGIN_NV04(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 1);
  OUT_RING (chan, chan->vram);
  BEGIN_NV04(chan, 0, NV84_SUBCHAN_SEMAPHORE_ADDRESS_HIGH, 5);
  OUT_RING (chan, upper_32_bits(virtual));
  OUT_RING (chan, lower_32_bits(virtual));
  OUT_RING (chan, sequence);
  OUT_RING (chan, NV84_SUBCHAN_SEMAPHORE_TRIGGER_WRITE_LONG);
  OUT_RING (chan, 0x00000000);
  FIRE_RING (chan);
 }
 return ret;
}
