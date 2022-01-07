
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_wq {scalar_t__ tail; scalar_t__ head; scalar_t__ max; scalar_t__ last_comp; scalar_t__ next_ind; } ;



__attribute__((used)) static void mthca_wq_reset(struct mthca_wq *wq)
{
 wq->next_ind = 0;
 wq->last_comp = wq->max - 1;
 wq->head = 0;
 wq->tail = 0;
}
