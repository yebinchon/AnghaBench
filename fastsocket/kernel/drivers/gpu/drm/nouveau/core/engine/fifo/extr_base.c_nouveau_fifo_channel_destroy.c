
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_object {int dummy; } ;
struct nouveau_fifo_chan {size_t chid; int base; int pushdma; int pushgpu; int user; } ;
struct nouveau_fifo {int lock; int ** channel; } ;
struct TYPE_2__ {scalar_t__ engine; } ;


 int iounmap (int ) ;
 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_namedb_destroy (int *) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 TYPE_1__* nv_object (struct nouveau_fifo_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
nouveau_fifo_channel_destroy(struct nouveau_fifo_chan *chan)
{
 struct nouveau_fifo *priv = (void *)nv_object(chan)->engine;
 unsigned long flags;

 iounmap(chan->user);

 spin_lock_irqsave(&priv->lock, flags);
 priv->channel[chan->chid] = ((void*)0);
 spin_unlock_irqrestore(&priv->lock, flags);

 nouveau_gpuobj_ref(((void*)0), &chan->pushgpu);
 nouveau_object_ref(((void*)0), (struct nouveau_object **)&chan->pushdma);
 nouveau_namedb_destroy(&chan->base);
}
