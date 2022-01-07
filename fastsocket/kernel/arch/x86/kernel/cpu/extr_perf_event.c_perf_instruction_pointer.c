
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_guest_ip ) () ;scalar_t__ (* is_in_guest ) () ;} ;


 unsigned long instruction_pointer (struct pt_regs*) ;
 TYPE_1__* perf_guest_cbs ;
 scalar_t__ stub1 () ;
 unsigned long stub2 () ;

unsigned long perf_instruction_pointer(struct pt_regs *regs)
{
 unsigned long ip;

 if (perf_guest_cbs && perf_guest_cbs->is_in_guest())
  ip = perf_guest_cbs->get_guest_ip();
 else
  ip = instruction_pointer(regs);

 return ip;
}
