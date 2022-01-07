
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IRQF_DISABLED ;
 int IRQF_PERCPU ;
 int PPC_MSG_DEBUGGER_BREAK ;
 int WARN (int,char*,int,int ,int) ;
 int request_irq (int,int ,int,int ,int ) ;
 int * smp_ipi_action ;
 int * smp_ipi_name ;

int smp_request_message_ipi(int virq, int msg)
{
 int err;

 if (msg < 0 || msg > PPC_MSG_DEBUGGER_BREAK) {
  return -EINVAL;
 }

 if (msg == PPC_MSG_DEBUGGER_BREAK) {
  return 1;
 }

 err = request_irq(virq, smp_ipi_action[msg], IRQF_DISABLED|IRQF_PERCPU,
     smp_ipi_name[msg], 0);
 WARN(err < 0, "unable to request_irq %d for %s (rc %d)\n",
  virq, smp_ipi_name[msg], err);

 return err;
}
