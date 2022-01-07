
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int port; TYPE_1__* card; } ;
struct TYPE_2__ {int card_lock; } ;


 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int isicom_shutdown_port (struct isi_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_hangup (int *) ;

__attribute__((used)) static void isicom_hangup(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 unsigned long flags;

 if (isicom_paranoia_check(port, tty->name, "isicom_hangup"))
  return;

 spin_lock_irqsave(&port->card->card_lock, flags);
 isicom_shutdown_port(port);
 spin_unlock_irqrestore(&port->card->card_lock, flags);

 tty_port_hangup(&port->port);
}
