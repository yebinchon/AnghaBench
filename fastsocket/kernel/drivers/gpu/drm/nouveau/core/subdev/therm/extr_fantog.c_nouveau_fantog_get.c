
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {scalar_t__ fan; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_fantog_priv {int percent; } ;



__attribute__((used)) static int
nouveau_fantog_get(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fantog_priv *priv = (void *)tpriv->fan;
 return priv->percent;
}
