
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int COMPARE ;
 int COUNT ;
 int raw_local_irq_restore (unsigned long) ;
 int raw_local_irq_save (unsigned long) ;
 scalar_t__ sysreg_read (int ) ;
 int sysreg_write (int ,int) ;

__attribute__((used)) static int comparator_next_event(unsigned long delta,
  struct clock_event_device *evdev)
{
 unsigned long flags;

 raw_local_irq_save(flags);




 sysreg_write(COMPARE, (sysreg_read(COUNT) + delta) ? : 1);

 raw_local_irq_restore(flags);

 return 0;
}
