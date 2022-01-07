
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct isi_port* driver_data; } ;
struct isi_port {int channel; struct isi_board* card; } ;
struct isi_board {unsigned long base; int shift_count; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int InterruptTheCard (unsigned long) ;
 int lock_card (struct isi_board*) ;
 int outw (int,unsigned long) ;
 int unlock_card (struct isi_board*) ;

__attribute__((used)) static int isicom_send_break(struct tty_struct *tty, int length)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;
 unsigned long base = card->base;

 if (length == -1)
  return -EOPNOTSUPP;

 if (!lock_card(card))
  return -EINVAL;

 outw(0x8000 | ((port->channel) << (card->shift_count)) | 0x3, base);
 outw((length & 0xff) << 8 | 0x00, base);
 outw((length & 0xff00), base);
 InterruptTheCard(base);

 unlock_card(card);
 return 0;
}
