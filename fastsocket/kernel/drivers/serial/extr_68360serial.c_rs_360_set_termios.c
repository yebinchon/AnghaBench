
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; scalar_t__ hw_stopped; scalar_t__ driver_data; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_6__ {int MCR; int open_wait; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_5__ {int c_cflag; } ;


 int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int change_speed (TYPE_2__*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rs_360_start (struct tty_struct*) ;
 int serial_out (TYPE_2__*,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_360_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;

 change_speed(info);
}
