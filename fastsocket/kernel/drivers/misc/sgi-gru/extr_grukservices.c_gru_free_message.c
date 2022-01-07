
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message_queue {void* limit; void* start2; int* hstatus; struct message_header* next; void* start; } ;
struct message_header {int lines; int present; } ;
struct gru_message_queue_desc {struct message_queue* mq; } ;


 int GRU_CACHE_LINE_BYTES ;
 int MQS_EMPTY ;
 int restore_present2 (struct message_header*,int ) ;

void gru_free_message(struct gru_message_queue_desc *mqd, void *mesg)
{
 struct message_queue *mq = mqd->mq;
 struct message_header *mhdr = mq->next;
 void *next, *pnext;
 int half = -1;
 int lines = mhdr->lines;

 if (lines == 2)
  restore_present2(mhdr, MQS_EMPTY);
 mhdr->present = MQS_EMPTY;

 pnext = mq->next;
 next = pnext + GRU_CACHE_LINE_BYTES * lines;
 if (next == mq->limit) {
  next = mq->start;
  half = 1;
 } else if (pnext < mq->start2 && next >= mq->start2) {
  half = 0;
 }

 if (half >= 0)
  mq->hstatus[half] = 1;
 mq->next = next;
}
