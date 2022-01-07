
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {int blocks_in_rx_queue; struct r3964_block_header* rx_first; int lock; struct r3964_block_header* rx_last; } ;
struct r3964_block_header {int length; struct r3964_block_header* next; } ;


 int TRACE_Q (char*,struct r3964_block_header*,int ,struct r3964_block_header*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_rx_queue(struct r3964_info *pInfo,
    struct r3964_block_header *pHeader)
{
 unsigned long flags;

 spin_lock_irqsave(&pInfo->lock, flags);

 pHeader->next = ((void*)0);

 if (pInfo->rx_last == ((void*)0)) {
  pInfo->rx_first = pInfo->rx_last = pHeader;
 } else {
  pInfo->rx_last->next = pHeader;
  pInfo->rx_last = pHeader;
 }
 pInfo->blocks_in_rx_queue++;

 spin_unlock_irqrestore(&pInfo->lock, flags);

 TRACE_Q("add_rx_queue: %p, length = %d, rx_first = %p, count = %d",
  pHeader, pHeader->length,
  pInfo->rx_first, pInfo->blocks_in_rx_queue);
}
