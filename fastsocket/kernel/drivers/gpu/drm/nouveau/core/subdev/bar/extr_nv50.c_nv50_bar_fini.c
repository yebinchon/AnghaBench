
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_bar_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_bar_fini (int *,int) ;

__attribute__((used)) static int
nv50_bar_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_bar_priv *priv = (void *)object;
 return nouveau_bar_fini(&priv->base, suspend);
}
