
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int lock; int * local_node; int color; } ;


 int for_each_fw_node (struct fw_card*,int *,int ) ;
 int report_lost_node ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void fw_destroy_nodes(struct fw_card *card)
{
 unsigned long flags;

 spin_lock_irqsave(&card->lock, flags);
 card->color++;
 if (card->local_node != ((void*)0))
  for_each_fw_node(card, card->local_node, report_lost_node);
 card->local_node = ((void*)0);
 spin_unlock_irqrestore(&card->lock, flags);
}
