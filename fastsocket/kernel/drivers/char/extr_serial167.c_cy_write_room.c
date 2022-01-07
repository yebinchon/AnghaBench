
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {int xmit_cnt; } ;


 int PAGE_SIZE ;
 int printk (char*,int ) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static int cy_write_room(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;
 int ret;





 if (serial_paranoia_check(info, tty->name, "cy_write_room"))
  return 0;
 ret = PAGE_SIZE - info->xmit_cnt - 1;
 if (ret < 0)
  ret = 0;
 return ret;
}
