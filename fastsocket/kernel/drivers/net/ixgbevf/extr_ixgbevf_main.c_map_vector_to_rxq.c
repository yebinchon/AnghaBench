
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; TYPE_2__* ring; } ;
struct ixgbevf_q_vector {TYPE_1__ rx; } ;
struct ixgbevf_adapter {TYPE_2__* rx_ring; struct ixgbevf_q_vector** q_vector; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;



__attribute__((used)) static inline void map_vector_to_rxq(struct ixgbevf_adapter *a, int v_idx,
         int r_idx)
{
 struct ixgbevf_q_vector *q_vector = a->q_vector[v_idx];

 a->rx_ring[r_idx].next = q_vector->rx.ring;
 q_vector->rx.ring = &a->rx_ring[r_idx];
 q_vector->rx.count++;
}
