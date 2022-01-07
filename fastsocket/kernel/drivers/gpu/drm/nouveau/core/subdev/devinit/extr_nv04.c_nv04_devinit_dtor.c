
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_devinit_priv {int base; int owner; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_destroy (int *) ;
 int nv_lockvgac (struct nv04_devinit_priv*,int) ;
 int nv_wrvgaowner (struct nv04_devinit_priv*,int ) ;

void
nv04_devinit_dtor(struct nouveau_object *object)
{
 struct nv04_devinit_priv *priv = (void *)object;


 nv_wrvgaowner(priv, priv->owner);
 nv_lockvgac(priv, 1);

 nouveau_devinit_destroy(&priv->base);
}
