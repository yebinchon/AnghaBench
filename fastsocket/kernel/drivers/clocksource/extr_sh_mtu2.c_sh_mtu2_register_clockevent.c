
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct clock_event_device {char* name; unsigned long rating; int set_mode; int cpumask; int features; } ;
struct sh_mtu2_priv {TYPE_1__ irqaction; struct clock_event_device ced; } ;


 int CLOCK_EVT_FEAT_PERIODIC ;
 int clockevents_register_device (struct clock_event_device*) ;
 int cpumask_of (int ) ;
 int memset (struct clock_event_device*,int ,int) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,char*) ;
 int setup_irq (int ,TYPE_1__*) ;
 int sh_mtu2_clock_event_mode ;

__attribute__((used)) static void sh_mtu2_register_clockevent(struct sh_mtu2_priv *p,
           char *name, unsigned long rating)
{
 struct clock_event_device *ced = &p->ced;
 int ret;

 memset(ced, 0, sizeof(*ced));

 ced->name = name;
 ced->features = CLOCK_EVT_FEAT_PERIODIC;
 ced->rating = rating;
 ced->cpumask = cpumask_of(0);
 ced->set_mode = sh_mtu2_clock_event_mode;

 ret = setup_irq(p->irqaction.irq, &p->irqaction);
 if (ret) {
  pr_err("sh_mtu2: failed to request irq %d\n",
         p->irqaction.irq);
  return;
 }

 pr_info("sh_mtu2: %s used for clock events\n", ced->name);
 clockevents_register_device(ced);
}
