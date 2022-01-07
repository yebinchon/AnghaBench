
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int isr0; int isr1; } ;
union sab82532_irq_status {TYPE_1__ sreg; } ;
struct TYPE_12__ {int dsr; } ;
struct TYPE_15__ {TYPE_6__* state; TYPE_4__ icount; } ;
struct uart_sunsab_port {int pvr_dsr_bit; int dsr; TYPE_7__ port; TYPE_3__* regs; } ;
struct TYPE_13__ {int delta_msr_wait; } ;
struct TYPE_14__ {TYPE_5__ port; } ;
struct TYPE_10__ {int pvr; int star; int vstr; } ;
struct TYPE_11__ {TYPE_2__ r; } ;


 int SAB82532_ISR0_CDSC ;
 int SAB82532_ISR1_CSC ;
 int SAB82532_STAR_CTS ;
 int SAB82532_VSTR_CD ;
 int readb (int *) ;
 int uart_handle_cts_change (TYPE_7__*,int) ;
 int uart_handle_dcd_change (TYPE_7__*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void check_status(struct uart_sunsab_port *up,
    union sab82532_irq_status *stat)
{
 if (stat->sreg.isr0 & SAB82532_ISR0_CDSC)
  uart_handle_dcd_change(&up->port,
           !(readb(&up->regs->r.vstr) & SAB82532_VSTR_CD));

 if (stat->sreg.isr1 & SAB82532_ISR1_CSC)
  uart_handle_cts_change(&up->port,
           (readb(&up->regs->r.star) & SAB82532_STAR_CTS));

 if ((readb(&up->regs->r.pvr) & up->pvr_dsr_bit) ^ up->dsr) {
  up->dsr = (readb(&up->regs->r.pvr) & up->pvr_dsr_bit) ? 0 : 1;
  up->port.icount.dsr++;
 }

 wake_up_interruptible(&up->port.state->port.delta_msr_wait);
}
