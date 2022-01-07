
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int offset; } ;
struct TYPE_6__ {TYPE_2__ vma; } ;
struct TYPE_4__ {int max; } ;
struct nouveau_channel {TYPE_3__ push; TYPE_1__ dma; scalar_t__ user_get_hi; int object; scalar_t__ user_get; } ;


 int EBUSY ;
 int EINVAL ;
 int nv_ro32 (int ,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static inline int
READ_GET(struct nouveau_channel *chan, uint64_t *prev_get, int *timeout)
{
 uint64_t val;

 val = nv_ro32(chan->object, chan->user_get);
        if (chan->user_get_hi)
                val |= (uint64_t)nv_ro32(chan->object, chan->user_get_hi) << 32;





 if (val != *prev_get) {
  *prev_get = val;
  *timeout = 0;
 }

 if ((++*timeout & 0xff) == 0) {
  udelay(1);
  if (*timeout > 100000)
   return -EBUSY;
 }

 if (val < chan->push.vma.offset ||
     val > chan->push.vma.offset + (chan->dma.max << 2))
  return -EINVAL;

 return (val - chan->push.vma.offset) >> 2;
}
