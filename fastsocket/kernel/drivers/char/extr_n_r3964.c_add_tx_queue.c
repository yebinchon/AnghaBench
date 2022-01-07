
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {struct r3964_block_header* tx_first; int lock; struct r3964_block_header* tx_last; } ;
struct r3964_block_header {int length; struct r3964_block_header* next; } ;


 int TRACE_Q (char*,struct r3964_block_header*,int ,struct r3964_block_header*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_tx_queue(struct r3964_info *pInfo,
    struct r3964_block_header *pHeader)
{
 unsigned long flags;

 spin_lock_irqsave(&pInfo->lock, flags);

 pHeader->next = ((void*)0);

 if (pInfo->tx_last == ((void*)0)) {
  pInfo->tx_first = pInfo->tx_last = pHeader;
 } else {
  pInfo->tx_last->next = pHeader;
  pInfo->tx_last = pHeader;
 }

 spin_unlock_irqrestore(&pInfo->lock, flags);

 TRACE_Q("add_tx_queue %p, length %d, tx_first = %p",
  pHeader, pHeader->length, pInfo->tx_first);
}
