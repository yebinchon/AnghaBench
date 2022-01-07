
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv20_graph_priv {int ctxtab; } ;
struct nv20_graph_chan {int chid; int base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_2__ {int addr; } ;


 int nouveau_graph_context_init (int *) ;
 TYPE_1__* nv_gpuobj (struct nv20_graph_chan*) ;
 int nv_wo32 (int ,int,int) ;

int
nv20_graph_context_init(struct nouveau_object *object)
{
 struct nv20_graph_priv *priv = (void *)object->engine;
 struct nv20_graph_chan *chan = (void *)object;
 int ret;

 ret = nouveau_graph_context_init(&chan->base);
 if (ret)
  return ret;

 nv_wo32(priv->ctxtab, chan->chid * 4, nv_gpuobj(chan)->addr >> 4);
 return 0;
}
