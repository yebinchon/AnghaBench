
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msgqueue_entry {struct msgqueue_entry* next; } ;
struct TYPE_3__ {struct msgqueue_entry* free; } ;
typedef TYPE_1__ MsgQueue_t ;



__attribute__((used)) static void mqe_free(MsgQueue_t *msgq, struct msgqueue_entry *mq)
{
 if (mq) {
  mq->next = msgq->free;
  msgq->free = mq;
 }
}
