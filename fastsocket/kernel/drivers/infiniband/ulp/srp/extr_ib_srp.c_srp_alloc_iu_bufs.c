
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_target_port {TYPE_1__** tx_ring; int srp_host; TYPE_1__** rx_ring; int free_tx; int max_iu_len; int max_ti_iu_len; } ;
struct TYPE_2__ {int list; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SRP_RQ_SIZE ;
 int SRP_SQ_SIZE ;
 int list_add (int *,int *) ;
 void* srp_alloc_iu (int ,int ,int ,int ) ;
 int srp_free_iu (int ,TYPE_1__*) ;

__attribute__((used)) static int srp_alloc_iu_bufs(struct srp_target_port *target)
{
 int i;

 for (i = 0; i < SRP_RQ_SIZE; ++i) {
  target->rx_ring[i] = srp_alloc_iu(target->srp_host,
        target->max_ti_iu_len,
        GFP_KERNEL, DMA_FROM_DEVICE);
  if (!target->rx_ring[i])
   goto err;
 }

 for (i = 0; i < SRP_SQ_SIZE; ++i) {
  target->tx_ring[i] = srp_alloc_iu(target->srp_host,
        target->max_iu_len,
        GFP_KERNEL, DMA_TO_DEVICE);
  if (!target->tx_ring[i])
   goto err;

  list_add(&target->tx_ring[i]->list, &target->free_tx);
 }

 return 0;

err:
 for (i = 0; i < SRP_RQ_SIZE; ++i) {
  srp_free_iu(target->srp_host, target->rx_ring[i]);
  target->rx_ring[i] = ((void*)0);
 }

 for (i = 0; i < SRP_SQ_SIZE; ++i) {
  srp_free_iu(target->srp_host, target->tx_ring[i]);
  target->tx_ring[i] = ((void*)0);
 }

 return -ENOMEM;
}
