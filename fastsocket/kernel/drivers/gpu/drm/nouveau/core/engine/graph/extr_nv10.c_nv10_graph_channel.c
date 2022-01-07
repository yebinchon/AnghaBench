
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {struct nv10_graph_chan** chan; } ;
struct nv10_graph_chan {int dummy; } ;


 int ARRAY_SIZE (struct nv10_graph_chan**) ;
 int nv_rd32 (struct nv10_graph_priv*,int) ;

__attribute__((used)) static struct nv10_graph_chan *
nv10_graph_channel(struct nv10_graph_priv *priv)
{
 struct nv10_graph_chan *chan = ((void*)0);
 if (nv_rd32(priv, 0x400144) & 0x00010000) {
  int chid = nv_rd32(priv, 0x400148) >> 24;
  if (chid < ARRAY_SIZE(priv->chan))
   chan = priv->chan[chid];
 }
 return chan;
}
