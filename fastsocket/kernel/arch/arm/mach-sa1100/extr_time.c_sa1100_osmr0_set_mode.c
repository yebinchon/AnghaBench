
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int OIER ;
 int OIER_E0 ;
 int OSSR ;
 int OSSR_M0 ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;

__attribute__((used)) static void
sa1100_osmr0_set_mode(enum clock_event_mode mode, struct clock_event_device *c)
{
 unsigned long flags;

 switch (mode) {
 case 132:
 case 128:
 case 129:
  raw_local_irq_save(flags);
  OIER &= ~OIER_E0;
  OSSR = OSSR_M0;
  raw_local_irq_restore(flags);
  break;

 case 130:
 case 131:
  break;
 }
}
