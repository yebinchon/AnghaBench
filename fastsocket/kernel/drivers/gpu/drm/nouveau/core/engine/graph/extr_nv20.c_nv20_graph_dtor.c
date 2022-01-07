
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv20_graph_priv {int base; int ctxtab; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_gpuobj_ref (int *,int *) ;
 int nouveau_graph_destroy (int *) ;

void
nv20_graph_dtor(struct nouveau_object *object)
{
 struct nv20_graph_priv *priv = (void *)object;
 nouveau_gpuobj_ref(((void*)0), &priv->ctxtab);
 nouveau_graph_destroy(&priv->base);
}
