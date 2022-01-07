
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int status; } ;


 int ISI_TXOK ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static void isicom_stop(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;

 if (isicom_paranoia_check(port, tty->name, "isicom_stop"))
  return;



 port->status &= ~ISI_TXOK;
}
