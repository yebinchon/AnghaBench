
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zs_scc {int zlock; } ;
struct uart_icount {int overrun; int parity; int frame; int brk; int rx; } ;
struct uart_port {unsigned int read_status_mask; TYPE_2__* state; struct uart_icount icount; } ;
struct zs_port {unsigned int tty_break; struct zs_scc* scc; struct uart_port port; } ;
struct TYPE_3__ {int tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int ERR_RES ;
 unsigned int FRM_ERR ;
 unsigned int PAR_ERR ;
 int R0 ;
 int R1 ;
 unsigned int Rx_BRK ;
 unsigned int Rx_CH_AV ;
 unsigned int Rx_OVR ;
 unsigned int Rx_SYS ;
 unsigned int TTY_BREAK ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 unsigned int read_zsdata (struct zs_port*) ;
 unsigned int read_zsreg (struct zs_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int ) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned int) ;
 int uart_insert_char (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_receive_chars(struct zs_port *zport)
{
 struct uart_port *uport = &zport->port;
 struct zs_scc *scc = zport->scc;
 struct uart_icount *icount;
 unsigned int avail, status, ch, flag;
 int count;

 for (count = 16; count; count--) {
  spin_lock(&scc->zlock);
  avail = read_zsreg(zport, R0) & Rx_CH_AV;
  spin_unlock(&scc->zlock);
  if (!avail)
   break;

  spin_lock(&scc->zlock);
  status = read_zsreg(zport, R1) & (Rx_OVR | FRM_ERR | PAR_ERR);
  ch = read_zsdata(zport);
  spin_unlock(&scc->zlock);

  flag = TTY_NORMAL;

  icount = &uport->icount;
  icount->rx++;


  if (!ch)
   status |= zport->tty_break;
  if (unlikely(status &
        (Rx_OVR | FRM_ERR | PAR_ERR | Rx_SYS | Rx_BRK))) {
   zport->tty_break = 0;


   if (status & (Rx_OVR | FRM_ERR | PAR_ERR)) {
    spin_lock(&scc->zlock);
    write_zsreg(zport, R0, ERR_RES);
    spin_unlock(&scc->zlock);
   }

   if (status & (Rx_SYS | Rx_BRK)) {
    icount->brk++;

    if (status & Rx_SYS)
     continue;
   } else if (status & FRM_ERR)
    icount->frame++;
   else if (status & PAR_ERR)
    icount->parity++;
   if (status & Rx_OVR)
    icount->overrun++;

   status &= uport->read_status_mask;
   if (status & Rx_BRK)
    flag = TTY_BREAK;
   else if (status & FRM_ERR)
    flag = TTY_FRAME;
   else if (status & PAR_ERR)
    flag = TTY_PARITY;
  }

  if (uart_handle_sysrq_char(uport, ch))
   continue;

  uart_insert_char(uport, status, Rx_OVR, ch, flag);
 }

 tty_flip_buffer_push(uport->state->port.tty);
}
