
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_q_vector {int napi; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_q_vector** q_vector; } ;


 int NON_Q_VECTORS ;
 int napi_enable (int *) ;

__attribute__((used)) static void ixgbevf_napi_enable_all(struct ixgbevf_adapter *adapter)
{
 int q_idx;
 struct ixgbevf_q_vector *q_vector;
 int q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

 for (q_idx = 0; q_idx < q_vectors; q_idx++) {
  q_vector = adapter->q_vector[q_idx];
  napi_enable(&q_vector->napi);
 }
}
