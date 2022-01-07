
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;


 int TS_POLLING ;
 TYPE_1__* current_thread_info () ;
 int local_irq_disable () ;
 int need_resched () ;
 int safe_halt () ;
 int smp_mb () ;

__attribute__((used)) static void acpi_safe_halt(void)
{
 current_thread_info()->status &= ~TS_POLLING;




 smp_mb();
 if (!need_resched()) {
  safe_halt();
  local_irq_disable();
 }
 current_thread_info()->status |= TS_POLLING;
}
