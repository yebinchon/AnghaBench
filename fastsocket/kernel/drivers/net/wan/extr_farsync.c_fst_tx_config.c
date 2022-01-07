
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fst_port_info {int index; scalar_t__ start; scalar_t__ txipos; scalar_t__ txpos; struct fst_card_info* card; } ;
struct fst_card_info {int card_lock; } ;
struct TYPE_2__ {int bits; int bcnt; int hadr; int ladr; } ;


 unsigned int BUF_OFFSET (int ) ;
 int FST_WRB (struct fst_card_info*,int ,int ) ;
 int FST_WRW (struct fst_card_info*,int ,int ) ;
 int NUM_TX_BUFFER ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int *** txBuffer ;
 TYPE_1__** txDescrRing ;

__attribute__((used)) static void
fst_tx_config(struct fst_port_info *port)
{
 int i;
 int pi;
 unsigned int offset;
 unsigned long flags;
 struct fst_card_info *card;

 pi = port->index;
 card = port->card;
 spin_lock_irqsave(&card->card_lock, flags);
 for (i = 0; i < NUM_TX_BUFFER; i++) {
  offset = BUF_OFFSET(txBuffer[pi][i][0]);

  FST_WRW(card, txDescrRing[pi][i].ladr, (u16) offset);
  FST_WRB(card, txDescrRing[pi][i].hadr, (u8) (offset >> 16));
  FST_WRW(card, txDescrRing[pi][i].bcnt, 0);
  FST_WRB(card, txDescrRing[pi][i].bits, 0);
 }
 port->txpos = 0;
 port->txipos = 0;
 port->start = 0;
 spin_unlock_irqrestore(&card->card_lock, flags);
}
