
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* entries; TYPE_1__* free; int * qe; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_2__ MsgQueue_t ;


 int NR_MESSAGES ;

void msgqueue_initialise(MsgQueue_t *msgq)
{
 int i;

 msgq->qe = ((void*)0);
 msgq->free = &msgq->entries[0];

 for (i = 0; i < NR_MESSAGES; i++)
  msgq->entries[i].next = &msgq->entries[i + 1];

 msgq->entries[NR_MESSAGES - 1].next = ((void*)0);
}
