
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int free; int cur; int max; int put; scalar_t__ ib_max; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_5__ {TYPE_1__ vma; } ;
struct nouveau_channel {TYPE_3__ dma; TYPE_2__ push; } ;


 int EBUSY ;
 int EINVAL ;
 int NOUVEAU_DMA_SKIPS ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int READ_GET (struct nouveau_channel*,int *,int*) ;
 int WRITE_PUT (int) ;
 int nv50_dma_wait (struct nouveau_channel*,int,int) ;
 scalar_t__ unlikely (int) ;

int
nouveau_dma_wait(struct nouveau_channel *chan, int slots, int size)
{
 uint64_t prev_get = 0;
 int cnt = 0, get;

 if (chan->dma.ib_max)
  return nv50_dma_wait(chan, slots, size);

 while (chan->dma.free < size) {
  get = READ_GET(chan, &prev_get, &cnt);
  if (unlikely(get == -EBUSY))
   return -EBUSY;
  if (unlikely(get == -EINVAL) || get < NOUVEAU_DMA_SKIPS)
   continue;

  if (get <= chan->dma.cur) {
   chan->dma.free = chan->dma.max - chan->dma.cur;
   if (chan->dma.free >= size)
    break;





   OUT_RING(chan, chan->push.vma.offset | 0x20000000);






   do {
    get = READ_GET(chan, &prev_get, &cnt);
    if (unlikely(get == -EBUSY))
     return -EBUSY;
    if (unlikely(get == -EINVAL))
     continue;
   } while (get <= NOUVEAU_DMA_SKIPS);
   WRITE_PUT(NOUVEAU_DMA_SKIPS);




   chan->dma.cur =
   chan->dma.put = NOUVEAU_DMA_SKIPS;
  }







  chan->dma.free = get - chan->dma.cur - 1;
 }

 return 0;
}
