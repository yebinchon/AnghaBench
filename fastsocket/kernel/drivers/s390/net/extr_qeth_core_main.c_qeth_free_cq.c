
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * out_bufstates; int * c_q; int no_in_queues; } ;
struct qeth_card {TYPE_1__ qdio; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void qeth_free_cq(struct qeth_card *card)
{
 if (card->qdio.c_q) {
  --card->qdio.no_in_queues;
  kfree(card->qdio.c_q);
  card->qdio.c_q = ((void*)0);
 }
 kfree(card->qdio.out_bufstates);
 card->qdio.out_bufstates = ((void*)0);
}
