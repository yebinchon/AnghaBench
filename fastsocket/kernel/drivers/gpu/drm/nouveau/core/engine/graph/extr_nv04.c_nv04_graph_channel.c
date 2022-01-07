
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_graph_priv {struct nv04_graph_chan** chan; } ;
struct nv04_graph_chan {int dummy; } ;


 int ARRAY_SIZE (struct nv04_graph_chan**) ;
 int NV04_PGRAPH_CTX_CONTROL ;
 int NV04_PGRAPH_CTX_USER ;
 int nv_rd32 (struct nv04_graph_priv*,int ) ;

__attribute__((used)) static struct nv04_graph_chan *
nv04_graph_channel(struct nv04_graph_priv *priv)
{
 struct nv04_graph_chan *chan = ((void*)0);
 if (nv_rd32(priv, NV04_PGRAPH_CTX_CONTROL) & 0x00010000) {
  int chid = nv_rd32(priv, NV04_PGRAPH_CTX_USER) >> 24;
  if (chid < ARRAY_SIZE(priv->chan))
   chan = priv->chan[chid];
 }
 return chan;
}
