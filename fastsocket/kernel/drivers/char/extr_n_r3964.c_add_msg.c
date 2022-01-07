
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_message {int msg_id; int arg; int error_code; struct r3964_message* next; struct r3964_block_header* block; } ;
struct r3964_client_info {int msg_count; int sig_flags; int pid; struct r3964_message* last_msg; int lock; struct r3964_message* first_msg; } ;
struct r3964_block_header {int locks; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int R3964_MAX_MSG_COUNT ;
 int R3964_MSG_ACK ;
 int R3964_OVERFLOW ;
 int R3964_USE_SIGIO ;
 int SIGIO ;
 int TRACE_M (char*,struct r3964_message*) ;
 int TRACE_PE (char*) ;
 int kill_pid (int ,int ,int) ;
 struct r3964_message* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_msg(struct r3964_client_info *pClient, int msg_id, int arg,
  int error_code, struct r3964_block_header *pBlock)
{
 struct r3964_message *pMsg;
 unsigned long flags;

 if (pClient->msg_count < R3964_MAX_MSG_COUNT - 1) {
queue_the_message:

  pMsg = kmalloc(sizeof(struct r3964_message),
    error_code ? GFP_ATOMIC : GFP_KERNEL);
  TRACE_M("add_msg - kmalloc %p", pMsg);
  if (pMsg == ((void*)0)) {
   return;
  }

  spin_lock_irqsave(&pClient->lock, flags);

  pMsg->msg_id = msg_id;
  pMsg->arg = arg;
  pMsg->error_code = error_code;
  pMsg->block = pBlock;
  pMsg->next = ((void*)0);

  if (pClient->last_msg == ((void*)0)) {
   pClient->first_msg = pClient->last_msg = pMsg;
  } else {
   pClient->last_msg->next = pMsg;
   pClient->last_msg = pMsg;
  }

  pClient->msg_count++;

  if (pBlock != ((void*)0)) {
   pBlock->locks++;
  }
  spin_unlock_irqrestore(&pClient->lock, flags);
 } else {
  if ((pClient->last_msg->msg_id == R3964_MSG_ACK)
      && (pClient->last_msg->error_code == R3964_OVERFLOW)) {
   pClient->last_msg->arg++;
   TRACE_PE("add_msg - inc prev OVERFLOW-msg");
  } else {
   msg_id = R3964_MSG_ACK;
   arg = 0;
   error_code = R3964_OVERFLOW;
   pBlock = ((void*)0);
   TRACE_PE("add_msg - queue OVERFLOW-msg");
   goto queue_the_message;
  }
 }

 if (pClient->sig_flags & R3964_USE_SIGIO) {
  kill_pid(pClient->pid, SIGIO, 1);
 }
}
