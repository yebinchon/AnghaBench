
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct tty_port {int dummy; } ;
struct isi_port {struct tty_port port; } ;
struct file {int dummy; } ;


 int isicom_close_port (struct tty_port*) ;
 int isicom_flush_buffer (struct tty_struct*) ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;

__attribute__((used)) static void isicom_close(struct tty_struct *tty, struct file *filp)
{
 struct isi_port *ip = tty->driver_data;
 struct tty_port *port = &ip->port;
 if (isicom_paranoia_check(ip, tty->name, "isicom_close"))
  return;

 if (tty_port_close_start(port, tty, filp) == 0)
  return;
 isicom_close_port(port);
 isicom_flush_buffer(tty);
 tty_port_close_end(port, tty);
}
