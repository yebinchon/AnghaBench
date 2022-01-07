
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line; } ;
struct mpsc_port_info {TYPE_2__ port; TYPE_1__* shared_regs; scalar_t__ mirror_regs; } ;
struct TYPE_3__ {scalar_t__ sdma_intr_base; scalar_t__ SDMA_INTR_CAUSE_m; } ;


 scalar_t__ SDMA_INTR_CAUSE ;
 int pr_debug (char*,scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void mpsc_sdma_intr_ack(struct mpsc_port_info *pi)
{
 pr_debug("mpsc_sdma_intr_ack[%d]: Acknowledging IRQ\n", pi->port.line);

 if (pi->mirror_regs)
  pi->shared_regs->SDMA_INTR_CAUSE_m = 0;
 writeb(0x00, pi->shared_regs->sdma_intr_base + SDMA_INTR_CAUSE
   + pi->port.line);
}
