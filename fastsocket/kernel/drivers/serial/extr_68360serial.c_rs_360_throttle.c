
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {TYPE_1__* termios; int name; TYPE_2__ ldisc; scalar_t__ driver_data; } ;
struct TYPE_8__ {int MCR; } ;
typedef TYPE_3__ ser_info_t ;
struct TYPE_6__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int UART_MCR ;
 int UART_MCR_RTS ;
 int _tty_name (struct tty_struct*,char*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int printk (char*,int ,int ) ;
 int rs_360_send_xchar (struct tty_struct*,int ) ;
 int serial_out (TYPE_3__*,int ,int ) ;
 scalar_t__ serial_paranoia_check (TYPE_3__*,int ,char*) ;
 int stub1 (struct tty_struct*) ;

__attribute__((used)) static void rs_360_throttle(struct tty_struct * tty)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;







 if (serial_paranoia_check(info, tty->name, "rs_throttle"))
  return;

 if (I_IXOFF(tty))
  rs_360_send_xchar(tty, STOP_CHAR(tty));
}
