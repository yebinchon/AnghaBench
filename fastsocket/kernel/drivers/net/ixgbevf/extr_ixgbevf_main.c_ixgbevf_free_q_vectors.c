
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_q_vector {int napi; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_q_vector** q_vector; } ;


 int NON_Q_VECTORS ;
 int kfree (struct ixgbevf_q_vector*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void ixgbevf_free_q_vectors(struct ixgbevf_adapter *adapter)
{
 int q_idx, num_q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

 for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
  struct ixgbevf_q_vector *q_vector = adapter->q_vector[q_idx];

  adapter->q_vector[q_idx] = ((void*)0);
  netif_napi_del(&q_vector->napi);
  kfree(q_vector);
 }
}
