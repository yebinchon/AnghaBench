
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_timer_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 void nouveau_timer_destroy (int *) ;

__attribute__((used)) static void
nv04_timer_dtor(struct nouveau_object *object)
{
 struct nv04_timer_priv *priv = (void *)object;
 return nouveau_timer_destroy(&priv->base);
}
