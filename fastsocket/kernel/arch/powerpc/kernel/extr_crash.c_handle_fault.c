
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int crash_shutdown_buf ;
 scalar_t__ crash_shutdown_cpu ;
 int longjmp (int ,int) ;
 scalar_t__ smp_processor_id () ;

__attribute__((used)) static int handle_fault(struct pt_regs *regs)
{
 if (crash_shutdown_cpu == smp_processor_id())
  longjmp(crash_shutdown_buf, 1);
 return 0;
}
