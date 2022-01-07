
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_message {scalar_t__ block; struct r3964_message* next; } ;
struct r3964_info {int dummy; } ;
struct r3964_client_info {int lock; scalar_t__ next_block_to_read; int msg_count; int * last_msg; struct r3964_message* first_msg; } ;


 int remove_client_block (struct r3964_info*,struct r3964_client_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct r3964_message *remove_msg(struct r3964_info *pInfo,
     struct r3964_client_info *pClient)
{
 struct r3964_message *pMsg = ((void*)0);
 unsigned long flags;

 if (pClient->first_msg) {
  spin_lock_irqsave(&pClient->lock, flags);

  pMsg = pClient->first_msg;
  pClient->first_msg = pMsg->next;
  if (pClient->first_msg == ((void*)0)) {
   pClient->last_msg = ((void*)0);
  }

  pClient->msg_count--;
  if (pMsg->block) {
   remove_client_block(pInfo, pClient);
   pClient->next_block_to_read = pMsg->block;
  }
  spin_unlock_irqrestore(&pClient->lock, flags);
 }
 return pMsg;
}
