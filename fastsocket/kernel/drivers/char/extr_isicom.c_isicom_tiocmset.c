
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {TYPE_1__* card; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int card_lock; } ;


 int ENODEV ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int drop_dtr (struct isi_port*) ;
 int drop_rts (struct isi_port*) ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int raise_dtr (struct isi_port*) ;
 int raise_rts (struct isi_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int isicom_tiocmset(struct tty_struct *tty, struct file *file,
 unsigned int set, unsigned int clear)
{
 struct isi_port *port = tty->driver_data;
 unsigned long flags;

 if (isicom_paranoia_check(port, tty->name, "isicom_ioctl"))
  return -ENODEV;

 spin_lock_irqsave(&port->card->card_lock, flags);
 if (set & TIOCM_RTS)
  raise_rts(port);
 if (set & TIOCM_DTR)
  raise_dtr(port);

 if (clear & TIOCM_RTS)
  drop_rts(port);
 if (clear & TIOCM_DTR)
  drop_dtr(port);
 spin_unlock_irqrestore(&port->card->card_lock, flags);

 return 0;
}
