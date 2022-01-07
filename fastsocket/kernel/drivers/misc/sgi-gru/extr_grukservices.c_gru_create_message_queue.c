
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message_queue {unsigned int qlines; int* hstatus; int head; int data; int * limit; int * next; int * start2; int * start; } ;
struct gru_message_queue_desc {unsigned int qlines; int interrupt_pnode; int interrupt_vector; int interrupt_apicid; int mq_gpa; struct message_queue* mq; } ;


 unsigned int GRU_CACHE_LINE_BYTES ;
 int gru_mesq_head (int,unsigned int) ;
 int memset (struct message_queue*,int ,unsigned int) ;
 int uv_gpa (struct message_queue*) ;

int gru_create_message_queue(struct gru_message_queue_desc *mqd,
  void *p, unsigned int bytes, int nasid, int vector, int apicid)
{
 struct message_queue *mq = p;
 unsigned int qlines;

 qlines = bytes / GRU_CACHE_LINE_BYTES - 2;
 memset(mq, 0, bytes);
 mq->start = &mq->data;
 mq->start2 = &mq->data + (qlines / 2 - 1) * GRU_CACHE_LINE_BYTES;
 mq->next = &mq->data;
 mq->limit = &mq->data + (qlines - 2) * GRU_CACHE_LINE_BYTES;
 mq->qlines = qlines;
 mq->hstatus[0] = 0;
 mq->hstatus[1] = 1;
 mq->head = gru_mesq_head(2, qlines / 2 + 1);
 mqd->mq = mq;
 mqd->mq_gpa = uv_gpa(mq);
 mqd->qlines = qlines;
 mqd->interrupt_pnode = nasid >> 1;
 mqd->interrupt_vector = vector;
 mqd->interrupt_apicid = apicid;
 return 0;
}
