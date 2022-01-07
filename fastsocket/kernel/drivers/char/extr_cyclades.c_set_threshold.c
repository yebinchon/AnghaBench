
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {unsigned long cor3; struct cyclades_card* card; } ;
struct cyclades_card {int card_lock; } ;


 int CyCOR3 ;
 int CyCOR3ch ;
 int CyCOR_CHANGE ;
 unsigned long CyREC_FIFO ;
 int cy_is_Z (struct cyclades_card*) ;
 int cyy_issue_cmd (struct cyclades_port*,int) ;
 int cyy_writeb (struct cyclades_port*,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int set_threshold(struct cyclades_port *info, unsigned long value)
{
 struct cyclades_card *card = info->card;
 unsigned long flags;

 if (!cy_is_Z(card)) {
  info->cor3 &= ~CyREC_FIFO;
  info->cor3 |= value & CyREC_FIFO;

  spin_lock_irqsave(&card->card_lock, flags);
  cyy_writeb(info, CyCOR3, info->cor3);
  cyy_issue_cmd(info, CyCOR_CHANGE | CyCOR3ch);
  spin_unlock_irqrestore(&card->card_lock, flags);
 }
 return 0;
}
