
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_MBOX_CLRX (int ) ;
 int IRQF_DISABLED ;
 int OCTEON_IRQ_MBOX0 ;
 int OCTEON_IRQ_MBOX1 ;
 int cvmx_get_core_num () ;
 int cvmx_write_csr (int ,int) ;
 int mailbox_interrupt ;
 int panic (char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;

void octeon_prepare_cpus(unsigned int max_cpus)
{
 cvmx_write_csr(CVMX_CIU_MBOX_CLRX(cvmx_get_core_num()), 0xffffffff);
 if (request_irq(OCTEON_IRQ_MBOX0, mailbox_interrupt, IRQF_DISABLED,
   "mailbox0", mailbox_interrupt)) {
  panic("Cannot request_irq(OCTEON_IRQ_MBOX0)\n");
 }
 if (request_irq(OCTEON_IRQ_MBOX1, mailbox_interrupt, IRQF_DISABLED,
   "mailbox1", mailbox_interrupt)) {
  panic("Cannot request_irq(OCTEON_IRQ_MBOX1)\n");
 }
}
