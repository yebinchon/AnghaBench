
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_q_vector {int v_idx; int napi; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_q_vector** q_vector; int netdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NON_Q_VECTORS ;
 int ixgbevf_poll ;
 int kfree (struct ixgbevf_q_vector*) ;
 struct ixgbevf_q_vector* kzalloc (int,int ) ;
 int netif_napi_add (int ,int *,int ,int) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static int ixgbevf_alloc_q_vectors(struct ixgbevf_adapter *adapter)
{
 int q_idx, num_q_vectors;
 struct ixgbevf_q_vector *q_vector;

 num_q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

 for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
  q_vector = kzalloc(sizeof(struct ixgbevf_q_vector), GFP_KERNEL);
  if (!q_vector)
   goto err_out;
  q_vector->adapter = adapter;
  q_vector->v_idx = q_idx;
  netif_napi_add(adapter->netdev, &q_vector->napi,
          ixgbevf_poll, 64);
  adapter->q_vector[q_idx] = q_vector;
 }

 return 0;

err_out:
 while (q_idx) {
  q_idx--;
  q_vector = adapter->q_vector[q_idx];
  netif_napi_del(&q_vector->napi);
  kfree(q_vector);
  adapter->q_vector[q_idx] = ((void*)0);
 }
 return -ENOMEM;
}
