
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv20_graph_priv {int ctxtab; } ;
struct nv20_graph_chan {int chid; int base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int addr; } ;


 int nouveau_graph_context_fini (int *,int) ;
 TYPE_1__* nv_gpuobj (struct nv20_graph_chan*) ;
 int nv_mask (struct nv20_graph_priv*,int,int,int) ;
 int nv_rd32 (struct nv20_graph_priv*,int) ;
 int nv_wait (struct nv20_graph_priv*,int,int,int) ;
 int nv_wo32 (int ,int,int) ;
 int nv_wr32 (struct nv20_graph_priv*,int,int) ;

int
nv20_graph_context_fini(struct nouveau_object *object, bool suspend)
{
 struct nv20_graph_priv *priv = (void *)object->engine;
 struct nv20_graph_chan *chan = (void *)object;
 int chid = -1;

 nv_mask(priv, 0x400720, 0x00000001, 0x00000000);
 if (nv_rd32(priv, 0x400144) & 0x00010000)
  chid = (nv_rd32(priv, 0x400148) & 0x1f000000) >> 24;
 if (chan->chid == chid) {
  nv_wr32(priv, 0x400784, nv_gpuobj(chan)->addr >> 4);
  nv_wr32(priv, 0x400788, 0x00000002);
  nv_wait(priv, 0x400700, 0xffffffff, 0x00000000);
  nv_wr32(priv, 0x400144, 0x10000000);
  nv_mask(priv, 0x400148, 0xff000000, 0x1f000000);
 }
 nv_mask(priv, 0x400720, 0x00000001, 0x00000001);

 nv_wo32(priv->ctxtab, chan->chid * 4, 0x00000000);
 return nouveau_graph_context_fini(&chan->base, suspend);
}
