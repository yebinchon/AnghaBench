
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int irqreturn_t ;


 int CVMX_CIU_MBOX_CLRX (int const) ;
 int IRQ_HANDLED ;
 int SMP_CALL_FUNCTION ;
 int SMP_ICACHE_FLUSH ;
 int cvmx_get_core_num () ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;
 int smp_call_function_interrupt () ;

__attribute__((used)) static irqreturn_t mailbox_interrupt(int irq, void *dev_id)
{
 const int coreid = cvmx_get_core_num();
 uint64_t action;


 action = cvmx_read_csr(CVMX_CIU_MBOX_CLRX(coreid));


 cvmx_write_csr(CVMX_CIU_MBOX_CLRX(coreid), action);

 if (action & SMP_CALL_FUNCTION)
  smp_call_function_interrupt();


 if (action & SMP_ICACHE_FLUSH)
  asm volatile ("synci 0($0)\n");
 return IRQ_HANDLED;
}
