
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_8__ {int overrun; int frame; int parity; int rx; } ;
struct TYPE_9__ {unsigned int ignore_status_mask; unsigned int read_status_mask; int lock; scalar_t__ sysrq; TYPE_3__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct imx_port {TYPE_4__ port; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {struct tty_struct* tty; } ;
struct TYPE_7__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 scalar_t__ URXD0 ;
 unsigned int URXD_FRMERR ;
 unsigned int URXD_OVRRUN ;
 unsigned int URXD_PRERR ;
 scalar_t__ USR2 ;
 unsigned long USR2_BRCD ;
 int USR2_RDR ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned int,unsigned int) ;
 scalar_t__ uart_handle_break (TYPE_4__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_4__*,unsigned char) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_rxint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 unsigned int rx,flg,ignored = 0;
 struct tty_struct *tty = sport->port.state->port.tty;
 unsigned long flags, temp;

 spin_lock_irqsave(&sport->port.lock,flags);

 while (readl(sport->port.membase + USR2) & USR2_RDR) {
  flg = TTY_NORMAL;
  sport->port.icount.rx++;

  rx = readl(sport->port.membase + URXD0);

  temp = readl(sport->port.membase + USR2);
  if (temp & USR2_BRCD) {
   writel(temp | USR2_BRCD, sport->port.membase + USR2);
   if (uart_handle_break(&sport->port))
    continue;
  }

  if (uart_handle_sysrq_char(&sport->port, (unsigned char)rx))
   continue;

  if (rx & (URXD_PRERR | URXD_OVRRUN | URXD_FRMERR) ) {
   if (rx & URXD_PRERR)
    sport->port.icount.parity++;
   else if (rx & URXD_FRMERR)
    sport->port.icount.frame++;
   if (rx & URXD_OVRRUN)
    sport->port.icount.overrun++;

   if (rx & sport->port.ignore_status_mask) {
    if (++ignored > 100)
     goto out;
    continue;
   }

   rx &= sport->port.read_status_mask;

   if (rx & URXD_PRERR)
    flg = TTY_PARITY;
   else if (rx & URXD_FRMERR)
    flg = TTY_FRAME;
   if (rx & URXD_OVRRUN)
    flg = TTY_OVERRUN;




  }

  tty_insert_flip_char(tty, rx, flg);
 }

out:
 spin_unlock_irqrestore(&sport->port.lock,flags);
 tty_flip_buffer_push(tty);
 return IRQ_HANDLED;
}
