
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nouveau_timer {int (* alarm ) (struct nouveau_timer*,unsigned long long,TYPE_3__*) ;} ;
struct TYPE_6__ {int head; } ;
struct nouveau_therm_priv {int mode; int lock; TYPE_3__ alarm; TYPE_2__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_4__ {int nr_fan_trip; } ;
struct TYPE_5__ {TYPE_1__ bios; } ;





 scalar_t__ list_empty (int *) ;
 int nouveau_therm_fan_get (struct nouveau_therm*) ;
 int nouveau_therm_fan_set (struct nouveau_therm*,int,int) ;
 int nouveau_therm_update_linear (struct nouveau_therm*) ;
 int nouveau_therm_update_trip (struct nouveau_therm*) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_therm*) ;
 int nv_debug (struct nouveau_therm*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nouveau_timer*,unsigned long long,TYPE_3__*) ;

__attribute__((used)) static void
nouveau_therm_update(struct nouveau_therm *therm, int mode)
{
 struct nouveau_timer *ptimer = nouveau_timer(therm);
 struct nouveau_therm_priv *priv = (void *)therm;
 unsigned long flags;
 int duty;

 spin_lock_irqsave(&priv->lock, flags);
 if (mode < 0)
  mode = priv->mode;
 priv->mode = mode;

 switch (mode) {
 case 129:
  duty = nouveau_therm_fan_get(therm);
  if (duty < 0)
   duty = 100;
  break;
 case 130:
  if (priv->fan->bios.nr_fan_trip)
   duty = nouveau_therm_update_trip(therm);
  else
   duty = nouveau_therm_update_linear(therm);
  break;
 case 128:
 default:
  goto done;
 }

 nv_debug(therm, "FAN target request: %d%%\n", duty);
 nouveau_therm_fan_set(therm, (mode != 130), duty);

done:
 if (list_empty(&priv->alarm.head) && (mode == 130))
  ptimer->alarm(ptimer, 1000000000ULL, &priv->alarm);
 spin_unlock_irqrestore(&priv->lock, flags);
}
