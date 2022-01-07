
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cur; int put; scalar_t__ ib_max; } ;
struct TYPE_3__ {int buffer; } ;
struct nouveau_channel {int accel_done; TYPE_2__ dma; TYPE_1__ push; } ;


 int WRITE_PUT (int) ;
 int nv50_dma_push (struct nouveau_channel*,int ,int,int) ;

__attribute__((used)) static inline void
FIRE_RING(struct nouveau_channel *chan)
{
 if (chan->dma.cur == chan->dma.put)
  return;
 chan->accel_done = 1;

 if (chan->dma.ib_max) {
  nv50_dma_push(chan, chan->push.buffer, chan->dma.put << 2,
         (chan->dma.cur - chan->dma.put) << 2);
 } else {
  WRITE_PUT(chan->dma.cur);
 }

 chan->dma.put = chan->dma.cur;
}
