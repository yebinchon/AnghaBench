
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ring; } ;
struct TYPE_8__ {TYPE_3__* ring; } ;
struct igb_q_vector {int napi; TYPE_2__ rx; TYPE_4__ tx; } ;
struct igb_adapter {struct igb_q_vector** q_vector; int ** tx_ring; } ;
struct TYPE_7__ {size_t queue_index; } ;
struct TYPE_5__ {size_t queue_index; } ;


 int kfree_rcu (struct igb_q_vector*,int ) ;
 int netif_napi_del (int *) ;
 int rcu ;

__attribute__((used)) static void igb_free_q_vector(struct igb_adapter *adapter, int v_idx)
{
 struct igb_q_vector *q_vector = adapter->q_vector[v_idx];

 if (q_vector->tx.ring)
  adapter->tx_ring[q_vector->tx.ring->queue_index] = ((void*)0);

 if (q_vector->rx.ring)
  adapter->tx_ring[q_vector->rx.ring->queue_index] = ((void*)0);

 adapter->q_vector[v_idx] = ((void*)0);
 netif_napi_del(&q_vector->napi);




 kfree_rcu(q_vector, rcu);
}
