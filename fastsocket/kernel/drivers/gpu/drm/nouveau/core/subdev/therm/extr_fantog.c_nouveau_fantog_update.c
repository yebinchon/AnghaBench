
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_timer {int (* alarm ) (struct nouveau_timer*,int,TYPE_2__*) ;} ;
struct nouveau_therm_priv {int dummy; } ;
struct nouveau_gpio {int (* set ) (struct nouveau_gpio*,int ,int ,int,int) ;int (* get ) (struct nouveau_gpio*,int ,int ,int) ;} ;
struct TYPE_4__ {int head; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct nouveau_fantog_priv {int percent; int period_us; int lock; TYPE_2__ alarm; TYPE_1__ base; } ;


 int DCB_GPIO_FAN ;
 scalar_t__ list_empty (int *) ;
 struct nouveau_gpio* nouveau_gpio (struct nouveau_therm_priv*) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_therm_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nouveau_gpio*,int ,int ,int) ;
 int stub2 (struct nouveau_gpio*,int ,int ,int,int) ;
 int stub3 (struct nouveau_timer*,int,TYPE_2__*) ;

__attribute__((used)) static void
nouveau_fantog_update(struct nouveau_fantog_priv *priv, int percent)
{
 struct nouveau_therm_priv *tpriv = (void *)priv->base.parent;
 struct nouveau_timer *ptimer = nouveau_timer(tpriv);
 struct nouveau_gpio *gpio = nouveau_gpio(tpriv);
 unsigned long flags;
 int duty;

 spin_lock_irqsave(&priv->lock, flags);
 if (percent < 0)
  percent = priv->percent;
 priv->percent = percent;

 duty = !gpio->get(gpio, 0, DCB_GPIO_FAN, 0xff);
 gpio->set(gpio, 0, DCB_GPIO_FAN, 0xff, duty);

 if (list_empty(&priv->alarm.head) && percent != (duty * 100)) {
  u64 next_change = (percent * priv->period_us) / 100;
  if (!duty)
   next_change = priv->period_us - next_change;
  ptimer->alarm(ptimer, next_change * 1000, &priv->alarm);
 }
 spin_unlock_irqrestore(&priv->lock, flags);
}
