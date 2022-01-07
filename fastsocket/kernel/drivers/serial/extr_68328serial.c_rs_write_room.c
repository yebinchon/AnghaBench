
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; scalar_t__ driver_data; } ;
struct m68k_serial {int xmit_cnt; } ;


 int SERIAL_XMIT_SIZE ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;

__attribute__((used)) static int rs_write_room(struct tty_struct *tty)
{
 struct m68k_serial *info = (struct m68k_serial *)tty->driver_data;
 int ret;

 if (serial_paranoia_check(info, tty->name, "rs_write_room"))
  return 0;
 ret = SERIAL_XMIT_SIZE - info->xmit_cnt - 1;
 if (ret < 0)
  ret = 0;
 return ret;
}
