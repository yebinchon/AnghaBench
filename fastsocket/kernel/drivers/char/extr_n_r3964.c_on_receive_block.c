
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {unsigned int rx_position; int flags; scalar_t__ bcc; scalar_t__ last_rx; scalar_t__ nRetry; void* state; int read_wait; struct r3964_client_info* firstClient; int rx_buf; int tmr; } ;
struct r3964_client_info {int sig_flags; struct r3964_client_info* next; } ;
struct r3964_block_header {unsigned int length; unsigned char* data; int * owner; int * next; scalar_t__ locks; } ;


 int DLE ;
 int GFP_KERNEL ;
 int NAK ;
 int R3964_BCC ;
 int R3964_CHECKSUM ;
 int R3964_ERROR ;
 void* R3964_IDLE ;
 scalar_t__ R3964_MAX_RETRIES ;
 int R3964_MSG_DATA ;
 int R3964_OK ;
 int R3964_SIG_DATA ;
 scalar_t__ R3964_TO_RX_PANIC ;
 void* R3964_WAIT_FOR_RX_REPEAT ;
 int TRACE_M (char*,struct r3964_block_header*) ;
 int TRACE_PE (char*,...) ;
 int TRACE_PS (char*,unsigned int) ;
 int add_msg (struct r3964_client_info*,int ,unsigned int,int ,struct r3964_block_header*) ;
 int add_rx_queue (struct r3964_info*,struct r3964_block_header*) ;
 int del_timer_sync (int *) ;
 int flush (struct r3964_info*) ;
 scalar_t__ jiffies ;
 struct r3964_block_header* kmalloc (unsigned int,int ) ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 int mod_timer (int *,scalar_t__) ;
 int put_char (struct r3964_info*,int ) ;
 int trigger_transmit (struct r3964_info*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void on_receive_block(struct r3964_info *pInfo)
{
 unsigned int length;
 struct r3964_client_info *pClient;
 struct r3964_block_header *pBlock;

 length = pInfo->rx_position;


 if (pInfo->flags & R3964_BCC) {
  if (pInfo->bcc != pInfo->last_rx) {
   TRACE_PE("checksum error - got %x but expected %x",
     pInfo->last_rx, pInfo->bcc);
   pInfo->flags |= R3964_CHECKSUM;
  }
 }


 if (pInfo->flags & R3964_ERROR) {
  TRACE_PE("on_receive_block - transmission failed error %x",
    pInfo->flags & R3964_ERROR);

  put_char(pInfo, NAK);
  flush(pInfo);
  if (pInfo->nRetry < R3964_MAX_RETRIES) {
   pInfo->state = R3964_WAIT_FOR_RX_REPEAT;
   pInfo->nRetry++;
   mod_timer(&pInfo->tmr, jiffies + R3964_TO_RX_PANIC);
  } else {
   TRACE_PE("on_receive_block - failed after max retries");
   pInfo->state = R3964_IDLE;
  }
  return;
 }


 put_char(pInfo, DLE);
 flush(pInfo);
 del_timer_sync(&pInfo->tmr);
 TRACE_PS(" rx success: got %d chars", length);


 pBlock = kmalloc(length + sizeof(struct r3964_block_header),
   GFP_KERNEL);
 TRACE_M("on_receive_block - kmalloc %p", pBlock);

 if (pBlock == ((void*)0))
  return;

 pBlock->length = length;
 pBlock->data = ((unsigned char *)pBlock) +
   sizeof(struct r3964_block_header);
 pBlock->locks = 0;
 pBlock->next = ((void*)0);
 pBlock->owner = ((void*)0);

 memcpy(pBlock->data, pInfo->rx_buf, length);


 add_rx_queue(pInfo, pBlock);


 for (pClient = pInfo->firstClient; pClient; pClient = pClient->next) {
  if (pClient->sig_flags & R3964_SIG_DATA) {
   add_msg(pClient, R3964_MSG_DATA, length, R3964_OK,
    pBlock);
  }
 }
 wake_up_interruptible(&pInfo->read_wait);

 pInfo->state = R3964_IDLE;

 trigger_transmit(pInfo);
}
