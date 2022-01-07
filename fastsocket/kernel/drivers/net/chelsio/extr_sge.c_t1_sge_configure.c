
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_params {int large_buf_capacity; } ;
struct sge {int dummy; } ;


 int ENOMEM ;
 scalar_t__ alloc_rx_resources (struct sge*,struct sge_params*) ;
 scalar_t__ alloc_tx_resources (struct sge*,struct sge_params*) ;
 int configure_sge (struct sge*,struct sge_params*) ;
 int free_rx_resources (struct sge*) ;
 int jumbo_payload_capacity (struct sge*) ;

int t1_sge_configure(struct sge *sge, struct sge_params *p)
{
 if (alloc_rx_resources(sge, p))
  return -ENOMEM;
 if (alloc_tx_resources(sge, p)) {
  free_rx_resources(sge);
  return -ENOMEM;
 }
 configure_sge(sge, p);







 p->large_buf_capacity = jumbo_payload_capacity(sge);
 return 0;
}
