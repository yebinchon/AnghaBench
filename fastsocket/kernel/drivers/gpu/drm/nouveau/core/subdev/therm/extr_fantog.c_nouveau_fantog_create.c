
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm_priv {TYPE_1__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct dcb_gpio_func {int dummy; } ;
struct TYPE_2__ {char* type; int set; int get; } ;
struct nouveau_fantog_priv {int period_us; int percent; int lock; struct dcb_gpio_func func; int alarm; TYPE_1__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_fantog_priv* kzalloc (int,int ) ;
 int nouveau_alarm_init (int *,int ) ;
 int nouveau_fantog_alarm ;
 int nouveau_fantog_get ;
 int nouveau_fantog_set ;
 int spin_lock_init (int *) ;

int
nouveau_fantog_create(struct nouveau_therm *therm, struct dcb_gpio_func *func)
{
 struct nouveau_therm_priv *tpriv = (void *)therm;
 struct nouveau_fantog_priv *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 tpriv->fan = &priv->base;
 if (!priv)
  return -ENOMEM;

 priv->base.type = "toggle";
 priv->base.get = nouveau_fantog_get;
 priv->base.set = nouveau_fantog_set;
 nouveau_alarm_init(&priv->alarm, nouveau_fantog_alarm);
 priv->period_us = 100000;
 priv->percent = 100;
 priv->func = *func;
 spin_lock_init(&priv->lock);
 return 0;
}
