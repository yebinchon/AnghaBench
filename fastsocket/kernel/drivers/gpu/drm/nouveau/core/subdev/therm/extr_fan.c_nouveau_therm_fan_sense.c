
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nouveau_timer {int (* read ) (struct nouveau_timer*) ;} ;
struct nouveau_therm_priv {TYPE_2__* fan; } ;
struct nouveau_therm {int dummy; } ;
struct nouveau_gpio {int (* get ) (struct nouveau_gpio*,int ,scalar_t__,int ) ;} ;
struct TYPE_3__ {scalar_t__ func; int line; } ;
struct TYPE_4__ {TYPE_1__ tach; } ;


 scalar_t__ DCB_GPIO_UNUSED ;
 int ENODEV ;
 int do_div (int,int) ;
 struct nouveau_gpio* nouveau_gpio (struct nouveau_therm*) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_therm*) ;
 int stub1 (struct nouveau_timer*) ;
 int stub2 (struct nouveau_gpio*,int ,scalar_t__,int ) ;
 int stub3 (struct nouveau_timer*) ;
 int stub4 (struct nouveau_gpio*,int ,scalar_t__,int ) ;
 int stub5 (struct nouveau_timer*) ;
 int stub6 (struct nouveau_timer*) ;
 int usleep_range (int,int) ;

int
nouveau_therm_fan_sense(struct nouveau_therm *therm)
{
 struct nouveau_therm_priv *priv = (void *)therm;
 struct nouveau_timer *ptimer = nouveau_timer(therm);
 struct nouveau_gpio *gpio = nouveau_gpio(therm);
 u32 cycles, cur, prev;
 u64 start, end, tach;

 if (priv->fan->tach.func == DCB_GPIO_UNUSED)
  return -ENODEV;





 start = ptimer->read(ptimer);
 prev = gpio->get(gpio, 0, priv->fan->tach.func, priv->fan->tach.line);
 cycles = 0;
 do {
  usleep_range(500, 1000);

  cur = gpio->get(gpio, 0, priv->fan->tach.func, priv->fan->tach.line);
  if (prev != cur) {
   if (!start)
    start = ptimer->read(ptimer);
   cycles++;
   prev = cur;
  }
 } while (cycles < 5 && ptimer->read(ptimer) - start < 250000000);
 end = ptimer->read(ptimer);

 if (cycles == 5) {
  tach = (u64)60000000000ULL;
  do_div(tach, (end - start));
  return tach;
 } else
  return 0;
}
