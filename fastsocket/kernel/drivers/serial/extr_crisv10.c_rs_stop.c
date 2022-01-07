
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {TYPE_3__* termios; scalar_t__ driver_data; } ;
struct TYPE_5__ {int tty; } ;
struct TYPE_4__ {int tail; int head; } ;
struct e100_serial {int * ioport; TYPE_2__ port; TYPE_1__ xmit; int line; } ;
struct TYPE_6__ {int c_iflag; } ;


 int CIRC_CNT (int ,int ,int ) ;
 int DEBUG_LOG (int ,char*,int ) ;
 int DFLOW (int ) ;
 unsigned long IO_FIELD (int ,int ,int ) ;
 unsigned long IO_STATE (int ,int ,int ) ;
 int IXON ;
 size_t REG_XOFF ;
 int R_SERIAL0_XOFF ;
 int SERIAL_XMIT_SIZE ;
 int STOP_CHAR (int ) ;
 int auto_xoff ;
 int enable ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int stop ;
 int tx_stop ;
 int xoff_char ;

__attribute__((used)) static void
rs_stop(struct tty_struct *tty)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 if (info) {
  unsigned long flags;
  unsigned long xoff;

  local_irq_save(flags);
  DFLOW(DEBUG_LOG(info->line, "XOFF rs_stop xmit %i\n",
    CIRC_CNT(info->xmit.head,
      info->xmit.tail,SERIAL_XMIT_SIZE)));

  xoff = IO_FIELD(R_SERIAL0_XOFF, xoff_char,
    STOP_CHAR(info->port.tty));
  xoff |= IO_STATE(R_SERIAL0_XOFF, tx_stop, stop);
  if (tty->termios->c_iflag & IXON ) {
   xoff |= IO_STATE(R_SERIAL0_XOFF, auto_xoff, enable);
  }

  *((unsigned long *)&info->ioport[REG_XOFF]) = xoff;
  local_irq_restore(flags);
 }
}
