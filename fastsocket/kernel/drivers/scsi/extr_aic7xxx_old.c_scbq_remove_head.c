
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aic7xxx_scb {struct aic7xxx_scb* q_next; } ;
struct TYPE_3__ {int * tail; struct aic7xxx_scb* head; } ;
typedef TYPE_1__ scb_queue_type ;



__attribute__((used)) static inline struct aic7xxx_scb *
scbq_remove_head(volatile scb_queue_type *queue)
{
  struct aic7xxx_scb * scbp;

  scbp = queue->head;
  if (queue->head != ((void*)0))
    queue->head = queue->head->q_next;
  if (queue->head == ((void*)0))
    queue->tail = ((void*)0);
  return(scbp);
}
