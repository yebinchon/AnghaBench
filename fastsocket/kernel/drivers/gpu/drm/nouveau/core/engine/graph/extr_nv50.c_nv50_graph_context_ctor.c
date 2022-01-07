
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_graph_priv {int size; } ;
struct nv50_graph_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int NVOBJ_FLAG_ZERO_ALLOC ;
 int nouveau_graph_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int *,int ,int ,int ,struct nv50_graph_chan**) ;
 int nv50_grctx_fill (int ,int ) ;
 int nv_device (struct nv50_graph_priv*) ;
 int nv_gpuobj (struct nv50_graph_chan*) ;
 struct nouveau_object* nv_object (struct nv50_graph_chan*) ;

__attribute__((used)) static int
nv50_graph_context_ctor(struct nouveau_object *parent,
   struct nouveau_object *engine,
   struct nouveau_oclass *oclass, void *data, u32 size,
   struct nouveau_object **pobject)
{
 struct nv50_graph_priv *priv = (void *)engine;
 struct nv50_graph_chan *chan;
 int ret;

 ret = nouveau_graph_context_create(parent, engine, oclass, ((void*)0),
        priv->size, 0,
        NVOBJ_FLAG_ZERO_ALLOC, &chan);
 *pobject = nv_object(chan);
 if (ret)
  return ret;

 nv50_grctx_fill(nv_device(priv), nv_gpuobj(chan));
 return 0;
}
