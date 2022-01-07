
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DIE_NMI ;
 int DIE_NMI_IPI ;
 scalar_t__ NOTIFY_STOP ;
 int SIGINT ;
 int do_nmi_callback (struct pt_regs*,int) ;
 unsigned char get_nmi_reason () ;
 int io_check_error (unsigned char,struct pt_regs*) ;
 int mem_parity_error (unsigned char,struct pt_regs*) ;
 scalar_t__ nmi_watchdog_tick (struct pt_regs*,unsigned char) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,unsigned char,int,int ) ;
 int reassert_nmi () ;
 int smp_processor_id () ;
 int unknown_nmi_error (unsigned char,struct pt_regs*) ;

void default_do_nmi(struct pt_regs *regs)
{
 unsigned char reason = 0;
 int cpu;

 cpu = smp_processor_id();


 if (!cpu)
  reason = get_nmi_reason();

 if (!(reason & 0xc0)) {
  if (notify_die(DIE_NMI_IPI, "nmi_ipi", regs, reason, 2, SIGINT)
        == NOTIFY_STOP)
   return;
  unknown_nmi_error(reason, regs);


  return;
 }
 if (notify_die(DIE_NMI, "nmi", regs, reason, 2, SIGINT) == NOTIFY_STOP)
  return;


 if (reason & 0x80)
  mem_parity_error(reason, regs);
 if (reason & 0x40)
  io_check_error(reason, regs);







}
