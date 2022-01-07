
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {int lock; } ;
struct nv10_graph_chan {int base; } ;
struct nouveau_object {scalar_t__ engine; } ;


 int NV04_PGRAPH_FIFO ;
 int nouveau_object_fini (int *,int) ;
 struct nv10_graph_chan* nv10_graph_channel (struct nv10_graph_priv*) ;
 int nv10_graph_unload_context (struct nv10_graph_chan*) ;
 int nv_mask (struct nv10_graph_priv*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv10_graph_context_fini(struct nouveau_object *object, bool suspend)
{
 struct nv10_graph_priv *priv = (void *)object->engine;
 struct nv10_graph_chan *chan = (void *)object;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 nv_mask(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000000);
 if (nv10_graph_channel(priv) == chan)
  nv10_graph_unload_context(chan);
 nv_mask(priv, NV04_PGRAPH_FIFO, 0x00000001, 0x00000001);
 spin_unlock_irqrestore(&priv->lock, flags);

 return nouveau_object_fini(&chan->base, suspend);
}
