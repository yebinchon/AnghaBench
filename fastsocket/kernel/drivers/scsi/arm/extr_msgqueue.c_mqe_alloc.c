
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msgqueue_entry {struct msgqueue_entry* next; } ;
struct TYPE_3__ {struct msgqueue_entry* free; } ;
typedef TYPE_1__ MsgQueue_t ;



__attribute__((used)) static struct msgqueue_entry *mqe_alloc(MsgQueue_t *msgq)
{
 struct msgqueue_entry *mq;

 if ((mq = msgq->free) != ((void*)0))
  msgq->free = mq->next;

 return mq;
}
