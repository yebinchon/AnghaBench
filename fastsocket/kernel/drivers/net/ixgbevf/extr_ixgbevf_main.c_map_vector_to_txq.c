
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; TYPE_2__* ring; } ;
struct ixgbevf_q_vector {TYPE_1__ tx; } ;
struct ixgbevf_adapter {TYPE_2__* tx_ring; struct ixgbevf_q_vector** q_vector; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;



__attribute__((used)) static inline void map_vector_to_txq(struct ixgbevf_adapter *a, int v_idx,
         int t_idx)
{
 struct ixgbevf_q_vector *q_vector = a->q_vector[v_idx];

 a->tx_ring[t_idx].next = q_vector->tx.ring;
 q_vector->tx.ring = &a->tx_ring[t_idx];
 q_vector->tx.count++;
}
