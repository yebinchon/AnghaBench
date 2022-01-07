
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_devinit_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_fini (int *,int) ;

__attribute__((used)) static int
nv50_devinit_fini(struct nouveau_object *object, bool suspend)
{
 struct nv50_devinit_priv *priv = (void *)object;
 return nouveau_devinit_fini(&priv->base, suspend);
}
