
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {int xmit_cnt; } ;


 int printk (char*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static int cy_chars_in_buffer(struct tty_struct *tty)
{
 struct cyclades_port *info = tty->driver_data;





 if (serial_paranoia_check(info, tty->name, "cy_chars_in_buffer"))
  return 0;

 return info->xmit_cnt;
}
