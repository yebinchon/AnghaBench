
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {unsigned int rq_count; int * napi; } ;


 int enic_clear_intr_mode (struct enic*) ;
 int enic_free_vnic_resources (struct enic*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void enic_dev_deinit(struct enic *enic)
{
 unsigned int i;

 for (i = 0; i < enic->rq_count; i++)
  netif_napi_del(&enic->napi[i]);

 enic_free_vnic_resources(enic);
 enic_clear_intr_mode(enic);
}
