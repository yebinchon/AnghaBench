
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_devinit_priv {scalar_t__ owner; int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_fini (int *,int) ;
 int nv_lockvgac (struct nv04_devinit_priv*,int) ;
 int nv_mask (struct nv04_devinit_priv*,int,int,int) ;
 scalar_t__ nv_rdvgaowner (struct nv04_devinit_priv*) ;
 int nv_wrvgaowner (struct nv04_devinit_priv*,int ) ;

int
nv04_devinit_fini(struct nouveau_object *object, bool suspend)
{
 struct nv04_devinit_priv *priv = (void *)object;


 nv_mask(priv, 0x000200, 0x00000001, 0x00000001);


 nv_lockvgac(priv, 0);
 if (priv->owner < 0)
  priv->owner = nv_rdvgaowner(priv);
 nv_wrvgaowner(priv, 0);

 return nouveau_devinit_fini(&priv->base, suspend);
}
