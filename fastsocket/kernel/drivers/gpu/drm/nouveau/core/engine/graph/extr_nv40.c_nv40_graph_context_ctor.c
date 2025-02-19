
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv40_graph_priv {int size; } ;
struct nv40_graph_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_3__ {int addr; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int nouveau_graph_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int ,int,int ,struct nv40_graph_chan**) ;
 int nv40_grctx_fill (int ,TYPE_1__*) ;
 int nv_device (struct nv40_graph_priv*) ;
 TYPE_1__* nv_gpuobj (struct nv40_graph_chan*) ;
 struct nouveau_object* nv_object (struct nv40_graph_chan*) ;
 int nv_wo32 (struct nv40_graph_chan*,int,int) ;

__attribute__((used)) static int
nv40_graph_context_ctor(struct nouveau_object *parent,
   struct nouveau_object *engine,
   struct nouveau_oclass *oclass, void *data, u32 size,
   struct nouveau_object **pobject)
{
 struct nv40_graph_priv *priv = (void *)engine;
 struct nv40_graph_chan *chan;
 int ret;

 ret = nouveau_graph_context_create(parent, engine, oclass, ((void*)0),
        priv->size, 16,
        NVOBJ_FLAG_ZERO_ALLOC, &chan);
 *pobject = nv_object(chan);
 if (ret)
  return ret;

 nv40_grctx_fill(nv_device(priv), nv_gpuobj(chan));
 nv_wo32(chan, 0x00000, nv_gpuobj(chan)->addr >> 4);
 return 0;
}
