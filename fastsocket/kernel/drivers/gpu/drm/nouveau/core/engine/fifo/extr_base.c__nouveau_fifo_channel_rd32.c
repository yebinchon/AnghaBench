
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {scalar_t__ user; } ;


 int ioread32_native (scalar_t__) ;

u32
_nouveau_fifo_channel_rd32(struct nouveau_object *object, u64 addr)
{
 struct nouveau_fifo_chan *chan = (void *)object;
 return ioread32_native(chan->user + addr);
}
