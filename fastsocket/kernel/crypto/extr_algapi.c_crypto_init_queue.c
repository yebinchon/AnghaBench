
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_queue {unsigned int max_qlen; scalar_t__ qlen; int list; int * backlog; } ;


 int INIT_LIST_HEAD (int *) ;

void crypto_init_queue(struct crypto_queue *queue, unsigned int max_qlen)
{
 INIT_LIST_HEAD(&queue->list);
 queue->backlog = &queue->list;
 queue->qlen = 0;
 queue->max_qlen = max_qlen;
}
