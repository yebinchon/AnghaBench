
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_graph_destroy (int *) ;

__attribute__((used)) static void
nv10_graph_dtor(struct nouveau_object *object)
{
 struct nv10_graph_priv *priv = (void *)object;
 nouveau_graph_destroy(&priv->base);
}
