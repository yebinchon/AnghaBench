
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct nouveau_timer {int (* alarm ) (struct nouveau_timer*,int,TYPE_2__*) ;} ;
struct nouveau_therm_priv {int dummy; } ;
struct nouveau_therm {int dummy; } ;
struct TYPE_4__ {int head; } ;
struct TYPE_3__ {int bump_period; int slow_down_period; int max_duty; int min_duty; } ;
struct nouveau_fan {int percent; int (* get ) (struct nouveau_therm*) ;int (* set ) (struct nouveau_therm*,int) ;int lock; TYPE_2__ alarm; TYPE_1__ bios; struct nouveau_therm* parent; } ;


 scalar_t__ list_empty (int *) ;
 int max (int,int) ;
 int max_t (int ,int,int ) ;
 int min (int,int) ;
 int min_t (int ,int,int ) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_therm_priv*) ;
 int nv_debug (struct nouveau_therm*,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct nouveau_therm*) ;
 int stub2 (struct nouveau_therm*,int) ;
 int stub3 (struct nouveau_timer*,int,TYPE_2__*) ;
 int u8 ;

__attribute__((used)) static int
nouveau_fan_update(struct nouveau_fan *fan, bool immediate, int target)
{
 struct nouveau_therm *therm = fan->parent;
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_timer *ptimer = nouveau_timer(priv);
 unsigned long flags;
 int ret = 0;
 int duty;


 spin_lock_irqsave(&fan->lock, flags);
 if (target < 0)
  target = fan->percent;
 target = max_t(u8, target, fan->bios.min_duty);
 target = min_t(u8, target, fan->bios.max_duty);
 if (fan->percent != target) {
  nv_debug(therm, "FAN target: %d\n", target);
  fan->percent = target;
 }


 duty = fan->get(therm);
 if (duty == target)
  goto done;


 if (!immediate && duty >= 0) {




  if (duty < target)
   duty = min(duty + 3, target);
  else if (duty > target)
   duty = max(duty - 3, target);
 } else {
  duty = target;
 }

 nv_debug(therm, "FAN update: %d\n", duty);
 ret = fan->set(therm, duty);
 if (ret)
  goto done;


 if (list_empty(&fan->alarm.head) && target != duty) {
  u16 bump_period = fan->bios.bump_period;
  u16 slow_down_period = fan->bios.slow_down_period;
  u64 delay;

  if (duty > target)
   delay = slow_down_period;
  else if (duty == target)
   delay = min(bump_period, slow_down_period) ;
  else
   delay = bump_period;

  ptimer->alarm(ptimer, delay * 1000 * 1000, &fan->alarm);
 }

done:
 spin_unlock_irqrestore(&fan->lock, flags);
 return ret;
}
