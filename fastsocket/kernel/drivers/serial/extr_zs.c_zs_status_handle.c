
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct zs_scc {int zlock; } ;
struct TYPE_4__ {int rng; int dsr; } ;
struct uart_port {TYPE_3__* state; TYPE_1__ icount; } ;
struct zs_port {int* regs; int brk; unsigned int mctrl; int tty_break; struct zs_scc* scc; struct uart_port port; } ;
struct TYPE_5__ {int delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;


 int BRKIE ;
 int BRK_ABRT ;
 int R0 ;
 int RES_EXT_INT ;
 int Rx_BRK ;
 int Rx_SYS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int read_zsreg (struct zs_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 int uart_handle_cts_change (struct uart_port*,unsigned int) ;
 int uart_handle_dcd_change (struct uart_port*,unsigned int) ;
 int wake_up_interruptible (int *) ;
 int write_zsreg (struct zs_port*,int ,int ) ;
 unsigned int zs_raw_xor_mctrl (struct zs_port*) ;

__attribute__((used)) static void zs_status_handle(struct zs_port *zport, struct zs_port *zport_a)
{
 struct uart_port *uport = &zport->port;
 struct zs_scc *scc = zport->scc;
 unsigned int delta;
 u8 status, brk;

 spin_lock(&scc->zlock);


 status = read_zsreg(zport, R0);

 if (zport->regs[15] & BRKIE) {
  brk = status & BRK_ABRT;
  if (brk && !zport->brk) {
   spin_unlock(&scc->zlock);
   if (uart_handle_break(uport))
    zport->tty_break = Rx_SYS;
   else
    zport->tty_break = Rx_BRK;
   spin_lock(&scc->zlock);
  }
  zport->brk = brk;
 }

 if (zport != zport_a) {
  delta = zs_raw_xor_mctrl(zport);
  spin_unlock(&scc->zlock);

  if (delta & TIOCM_CTS)
   uart_handle_cts_change(uport,
            zport->mctrl & TIOCM_CTS);
  if (delta & TIOCM_CAR)
   uart_handle_dcd_change(uport,
            zport->mctrl & TIOCM_CAR);
  if (delta & TIOCM_RNG)
   uport->icount.dsr++;
  if (delta & TIOCM_DSR)
   uport->icount.rng++;

  if (delta)
   wake_up_interruptible(&uport->state->port.delta_msr_wait);

  spin_lock(&scc->zlock);
 }


 write_zsreg(zport, R0, RES_EXT_INT);

 spin_unlock(&scc->zlock);
}
