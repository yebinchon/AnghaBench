
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_devinit_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_devinit_destroy (int *) ;

__attribute__((used)) static void
nv50_devinit_dtor(struct nouveau_object *object)
{
 struct nv50_devinit_priv *priv = (void *)object;
 nouveau_devinit_destroy(&priv->base);
}
