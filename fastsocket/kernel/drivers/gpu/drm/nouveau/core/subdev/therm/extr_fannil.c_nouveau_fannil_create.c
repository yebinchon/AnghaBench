
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_therm_priv {struct nouveau_fan* fan; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_fan {char* type; int set; int get; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_fan* kzalloc (int,int ) ;
 int nouveau_fannil_get ;
 int nouveau_fannil_set ;

int
nouveau_fannil_create(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fan *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 tpriv->fan = priv;
 if (!priv)
  return -ENOMEM;

 priv->type = "none / external";
 priv->get = nouveau_fannil_get;
 priv->set = nouveau_fannil_set;
 return 0;
}
