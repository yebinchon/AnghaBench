
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {int dummy; } ;


 int nouveau_fifo_channel_destroy (struct nouveau_fifo_chan*) ;

void
_nouveau_fifo_channel_dtor(struct nouveau_object *object)
{
 struct nouveau_fifo_chan *chan = (void *)object;
 nouveau_fifo_channel_destroy(chan);
}
