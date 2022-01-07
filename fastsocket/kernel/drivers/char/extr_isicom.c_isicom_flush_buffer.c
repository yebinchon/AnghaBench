
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct isi_board* card; } ;
struct isi_board {int card_lock; } ;


 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void isicom_flush_buffer(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;
 unsigned long flags;

 if (isicom_paranoia_check(port, tty->name, "isicom_flush_buffer"))
  return;

 spin_lock_irqsave(&card->card_lock, flags);
 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
 spin_unlock_irqrestore(&card->card_lock, flags);

 tty_wakeup(tty);
}
