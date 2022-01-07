
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_graph_priv {int lock; int ** chan; } ;
struct nv04_graph_chan {size_t chid; int base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int nouveau_object_destroy (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv04_graph_context_dtor(struct nouveau_object *object)
{
 struct nv04_graph_priv *priv = (void *)object->engine;
 struct nv04_graph_chan *chan = (void *)object;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 priv->chan[chan->chid] = ((void*)0);
 spin_unlock_irqrestore(&priv->lock, flags);

 nouveau_object_destroy(&chan->base);
}
