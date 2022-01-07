
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ngene_channel {struct ngene* dev; } ;
struct TYPE_3__ {int queue; } ;
struct ngene {TYPE_1__ tsout_rbuf; } ;


 int DF_SWAP32 ;
 int FillTSBuffer (void*,int,int) ;
 int dvb_ringbuffer_avail (TYPE_1__*) ;
 int dvb_ringbuffer_read (TYPE_1__*,void*,int) ;
 int swap_buffer (int*,int) ;
 int wake_up_interruptible (int *) ;

void *tsout_exchange(void *priv, void *buf, u32 len, u32 clock, u32 flags)
{
 struct ngene_channel *chan = priv;
 struct ngene *dev = chan->dev;
 u32 alen;

 alen = dvb_ringbuffer_avail(&dev->tsout_rbuf);
 alen -= alen % 188;

 if (alen < len)
  FillTSBuffer(buf + alen, len - alen, flags);
 else
  alen = len;
 dvb_ringbuffer_read(&dev->tsout_rbuf, buf, alen);
 if (flags & DF_SWAP32)
  swap_buffer((u32 *)buf, alen);
 wake_up_interruptible(&dev->tsout_rbuf.queue);
 return buf;
}
