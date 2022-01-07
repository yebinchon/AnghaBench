
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_graph_fini (int *,int) ;

__attribute__((used)) static int
nv10_graph_fini(struct nouveau_object *object, bool suspend)
{
 struct nv10_graph_priv *priv = (void *)object;
 return nouveau_graph_fini(&priv->base, suspend);
}
