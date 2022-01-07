
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash_ipi_function_ptr (int ) ;
 int debugger_ipi (int ) ;
 int generic_smp_call_function_interrupt () ;
 int generic_smp_call_function_single_interrupt () ;
 int get_irq_regs () ;
 int printk (char*,int ,int) ;
 int scheduler_ipi () ;
 int smp_processor_id () ;

void smp_message_recv(int msg)
{
 switch(msg) {
 case 131:
  generic_smp_call_function_interrupt();
  break;
 case 128:

  scheduler_ipi();
  break;
 case 130:
  generic_smp_call_function_single_interrupt();
  break;
 case 129:
  if (crash_ipi_function_ptr) {
   crash_ipi_function_ptr(get_irq_regs());
   break;
  }





 default:
  printk("SMP %d: smp_message_recv(): unknown msg %d\n",
         smp_processor_id(), msg);
  break;
 }
}
