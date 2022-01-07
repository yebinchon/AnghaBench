
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {scalar_t__ user; } ;


 int iowrite32_native (int ,scalar_t__) ;

void
_nouveau_fifo_channel_wr32(struct nouveau_object *object, u64 addr, u32 data)
{
 struct nouveau_fifo_chan *chan = (void *)object;
 iowrite32_native(data, chan->user + addr);
}
