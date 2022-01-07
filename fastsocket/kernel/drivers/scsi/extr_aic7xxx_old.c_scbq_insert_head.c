
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aic7xxx_scb {struct aic7xxx_scb* q_next; } ;
struct TYPE_3__ {struct aic7xxx_scb* head; struct aic7xxx_scb* tail; } ;
typedef TYPE_1__ scb_queue_type ;



__attribute__((used)) static inline void
scbq_insert_head(volatile scb_queue_type *queue, struct aic7xxx_scb *scb)
{
  scb->q_next = queue->head;
  queue->head = scb;
  if (queue->tail == ((void*)0))
    queue->tail = queue->head;
}
