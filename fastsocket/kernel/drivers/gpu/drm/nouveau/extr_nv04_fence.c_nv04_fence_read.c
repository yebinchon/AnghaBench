
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_fifo_chan {int refcnt; } ;
struct nouveau_channel {scalar_t__ object; } ;


 int atomic_read (int *) ;

__attribute__((used)) static u32
nv04_fence_read(struct nouveau_channel *chan)
{
 struct nouveau_fifo_chan *fifo = (void *)chan->object;
 return atomic_read(&fifo->refcnt);
}
