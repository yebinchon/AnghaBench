
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct file {int dummy; } ;
struct cyclades_port {int port; } ;


 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;
 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void cy_close(struct tty_struct *tty, struct file *filp)
{
 struct cyclades_port *info = tty->driver_data;
 if (!info || serial_paranoia_check(info, tty->name, "cy_close"))
  return;
 tty_port_close(&info->port, tty, filp);
}
