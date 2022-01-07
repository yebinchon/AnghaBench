
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {int lock; struct nv10_graph_chan** chan; } ;
struct nv10_graph_chan {int dummy; } ;


 int NV04_PGRAPH_TRAPPED_ADDR ;
 int nv04_graph_idle (struct nv10_graph_priv*) ;
 struct nv10_graph_chan* nv10_graph_channel (struct nv10_graph_priv*) ;
 int nv10_graph_load_context (struct nv10_graph_chan*,int) ;
 int nv10_graph_unload_context (struct nv10_graph_chan*) ;
 int nv_rd32 (struct nv10_graph_priv*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv10_graph_context_switch(struct nv10_graph_priv *priv)
{
 struct nv10_graph_chan *prev = ((void*)0);
 struct nv10_graph_chan *next = ((void*)0);
 unsigned long flags;
 int chid;

 spin_lock_irqsave(&priv->lock, flags);
 nv04_graph_idle(priv);


 prev = nv10_graph_channel(priv);
 if (prev)
  nv10_graph_unload_context(prev);


 chid = (nv_rd32(priv, NV04_PGRAPH_TRAPPED_ADDR) >> 20) & 0x1f;
 next = priv->chan[chid];
 if (next)
  nv10_graph_load_context(next, chid);

 spin_unlock_irqrestore(&priv->lock, flags);
}
