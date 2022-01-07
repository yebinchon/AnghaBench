
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; struct isi_port* driver_data; } ;
struct TYPE_2__ {int flags; int count; } ;
struct isi_port {int channel; TYPE_1__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct isi_board* card; } ;
struct isi_board {int shift_count; int card_lock; int base; int count; } ;


 int ASYNC_INITIALIZED ;
 int ENOMEM ;
 int ISICOM_KILLRX ;
 int ISICOM_KILLTX ;
 int InterruptTheCard (int ) ;
 int TTY_IO_ERROR ;
 scalar_t__ WaitTillCardIsFree (int ) ;
 int clear_bit (int ,int *) ;
 int isicom_config_port (struct tty_struct*) ;
 int outw (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ tty_port_alloc_xmit_buf (TYPE_1__*) ;

__attribute__((used)) static int isicom_setup_port(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;
 unsigned long flags;

 if (port->port.flags & ASYNC_INITIALIZED)
  return 0;
 if (tty_port_alloc_xmit_buf(&port->port) < 0)
  return -ENOMEM;

 spin_lock_irqsave(&card->card_lock, flags);
 clear_bit(TTY_IO_ERROR, &tty->flags);
 if (port->port.count == 1)
  card->count++;

 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;


 if (WaitTillCardIsFree(card->base) == 0) {
  outw(0x8000 | (port->channel << card->shift_count) | 0x02,
    card->base);
  outw(((ISICOM_KILLTX | ISICOM_KILLRX) << 8) | 0x06, card->base);
  InterruptTheCard(card->base);
 }

 isicom_config_port(tty);
 port->port.flags |= ASYNC_INITIALIZED;
 spin_unlock_irqrestore(&card->card_lock, flags);

 return 0;
}
