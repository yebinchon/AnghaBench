
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_port_info {size_t index; scalar_t__ start; scalar_t__ txipos; scalar_t__ txpos; struct fst_card_info* card; } ;
struct fst_card_info {int card_lock; } ;


 unsigned short ABORTTX ;
 int DBG_CMD ;
 unsigned short FST_RDW (struct fst_card_info*,int ) ;
 int FST_WRW (struct fst_card_info*,int ,unsigned short) ;
 unsigned short NAK ;
 unsigned short STARTPORT ;
 int dbg (int ,char*,...) ;
 int ** portMailbox ;
 int printk_err (char*) ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
fst_issue_cmd(struct fst_port_info *port, unsigned short cmd)
{
 struct fst_card_info *card;
 unsigned short mbval;
 unsigned long flags;
 int safety;

 card = port->card;
 spin_lock_irqsave(&card->card_lock, flags);
 mbval = FST_RDW(card, portMailbox[port->index][0]);

 safety = 0;

 while (mbval > NAK) {
  spin_unlock_irqrestore(&card->card_lock, flags);
  schedule_timeout_uninterruptible(1);
  spin_lock_irqsave(&card->card_lock, flags);

  if (++safety > 2000) {
   printk_err("Mailbox safety timeout\n");
   break;
  }

  mbval = FST_RDW(card, portMailbox[port->index][0]);
 }
 if (safety > 0) {
  dbg(DBG_CMD, "Mailbox clear after %d jiffies\n", safety);
 }
 if (mbval == NAK) {
  dbg(DBG_CMD, "issue_cmd: previous command was NAK'd\n");
 }

 FST_WRW(card, portMailbox[port->index][0], cmd);

 if (cmd == ABORTTX || cmd == STARTPORT) {
  port->txpos = 0;
  port->txipos = 0;
  port->start = 0;
 }

 spin_unlock_irqrestore(&card->card_lock, flags);
}
