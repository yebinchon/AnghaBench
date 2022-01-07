
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; struct scc_port* driver_data; } ;
struct scc_port {int dummy; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int SCC_ACCESS_INIT (struct scc_port*) ;
 int SCCmod (int ,int ,int ) ;
 int STOP_CHAR (struct tty_struct*) ;
 int TCR_RTS ;
 int TX_CTRL_REG ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int scc_send_xchar (struct tty_struct*,int ) ;

__attribute__((used)) static void scc_throttle (struct tty_struct * tty)
{
 struct scc_port *port = tty->driver_data;
 unsigned long flags;
 SCC_ACCESS_INIT(port);

 if (tty->termios->c_cflag & CRTSCTS) {
  local_irq_save(flags);
  SCCmod(TX_CTRL_REG, ~TCR_RTS, 0);
  local_irq_restore(flags);
 }
 if (I_IXOFF(tty))
  scc_send_xchar(tty, STOP_CHAR(tty));
}
