
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_rx_queue {scalar_t__ free_count; scalar_t__ write; scalar_t__ read; int rx_used; TYPE_1__* pool; int rx_free; int lock; } ;
struct ipw_priv {int dummy; } ;
struct TYPE_2__ {int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IPW_ERROR (char*) ;
 int RX_FREE_BUFFERS ;
 int RX_QUEUE_SIZE ;
 struct ipw_rx_queue* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ipw_rx_queue *ipw_rx_queue_alloc(struct ipw_priv *priv)
{
 struct ipw_rx_queue *rxq;
 int i;

 rxq = kzalloc(sizeof(*rxq), GFP_KERNEL);
 if (unlikely(!rxq)) {
  IPW_ERROR("memory allocation failed\n");
  return ((void*)0);
 }
 spin_lock_init(&rxq->lock);
 INIT_LIST_HEAD(&rxq->rx_free);
 INIT_LIST_HEAD(&rxq->rx_used);


 for (i = 0; i < RX_FREE_BUFFERS + RX_QUEUE_SIZE; i++)
  list_add_tail(&rxq->pool[i].list, &rxq->rx_used);



 rxq->read = rxq->write = 0;
 rxq->free_count = 0;

 return rxq;
}
