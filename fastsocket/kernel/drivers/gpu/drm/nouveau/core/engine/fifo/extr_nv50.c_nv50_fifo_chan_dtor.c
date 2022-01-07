
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fifo_chan {int base; int ramht; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fifo_channel_destroy (int *) ;
 int nouveau_ramht_ref (int *,int *) ;

void
nv50_fifo_chan_dtor(struct nouveau_object *object)
{
 struct nv50_fifo_chan *chan = (void *)object;
 nouveau_ramht_ref(((void*)0), &chan->ramht);
 nouveau_fifo_channel_destroy(&chan->base);
}
