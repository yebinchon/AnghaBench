
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct aic7xxx_scb {struct aic7xxx_scb* q_next; } ;
struct TYPE_4__ {struct aic7xxx_scb* tail; struct aic7xxx_scb* head; } ;
typedef TYPE_1__ scb_queue_type ;


 int scbq_remove_head (TYPE_1__ volatile*) ;

__attribute__((used)) static inline void
scbq_remove(volatile scb_queue_type *queue, struct aic7xxx_scb *scb)
{
  if (queue->head == scb)
  {

    scbq_remove_head(queue);
  }
  else
  {
    struct aic7xxx_scb *curscb = queue->head;





    while ((curscb != ((void*)0)) && (curscb->q_next != scb))
    {
      curscb = curscb->q_next;
    }
    if (curscb != ((void*)0))
    {

      curscb->q_next = scb->q_next;
      if (scb->q_next == ((void*)0))
      {

        queue->tail = curscb;
      }
    }
  }
}
