
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {TYPE_1__* termios; TYPE_2__ ldisc; scalar_t__ driver_data; } ;
struct e100_serial {int line; } ;
struct TYPE_3__ {int c_cflag; } ;


 int CRTSCTS ;
 int DEBUG_LOG (int ,char*,scalar_t__) ;
 int DFLOW (int ) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 int e100_rts (struct e100_serial*,int ) ;
 int printk (char*,int ,unsigned long) ;
 int rs_send_xchar (struct tty_struct*,int ) ;
 scalar_t__ stub1 (struct tty_struct*) ;
 scalar_t__ stub2 (struct tty_struct*) ;
 int tty_name (struct tty_struct*,char*) ;

__attribute__((used)) static void
rs_throttle(struct tty_struct * tty)
{
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;






 DFLOW(DEBUG_LOG(info->line,"rs_throttle %lu\n", tty->ldisc.chars_in_buffer(tty)));


 if (tty->termios->c_cflag & CRTSCTS) {

  e100_rts(info, 0);
 }
 if (I_IXOFF(tty))
  rs_send_xchar(tty, STOP_CHAR(tty));

}
