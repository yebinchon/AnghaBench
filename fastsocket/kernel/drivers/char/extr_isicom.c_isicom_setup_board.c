
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isi_port {int dummy; } ;
struct isi_board {int status; int port_count; int card_lock; struct isi_port* ports; } ;


 int BOARD_ACTIVE ;
 int drop_dtr_rts (struct isi_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void isicom_setup_board(struct isi_board *bp)
{
 int channel;
 struct isi_port *port;
 unsigned long flags;

 spin_lock_irqsave(&bp->card_lock, flags);
 if (bp->status & BOARD_ACTIVE) {
  spin_unlock_irqrestore(&bp->card_lock, flags);
  return;
 }
 port = bp->ports;
 bp->status |= BOARD_ACTIVE;
 for (channel = 0; channel < bp->port_count; channel++, port++)
  drop_dtr_rts(port);
 spin_unlock_irqrestore(&bp->card_lock, flags);
}
