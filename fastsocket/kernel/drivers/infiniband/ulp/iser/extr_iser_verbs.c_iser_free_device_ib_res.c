
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_device {int cqs_used; int * pd; int * mr; int cq_desc; int event_handler; int ** rx_cq; int ** tx_cq; int * cq_tasklet; } ;


 int BUG_ON (int ) ;
 int ib_dealloc_pd (int *) ;
 int ib_dereg_mr (int *) ;
 int ib_destroy_cq (int *) ;
 int ib_unregister_event_handler (int *) ;
 int kfree (int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void iser_free_device_ib_res(struct iser_device *device)
{
 int i;
 BUG_ON(device->mr == ((void*)0));

 for (i = 0; i < device->cqs_used; i++) {
  tasklet_kill(&device->cq_tasklet[i]);
  (void)ib_destroy_cq(device->tx_cq[i]);
  (void)ib_destroy_cq(device->rx_cq[i]);
  device->tx_cq[i] = ((void*)0);
  device->rx_cq[i] = ((void*)0);
 }

 (void)ib_unregister_event_handler(&device->event_handler);
 (void)ib_dereg_mr(device->mr);
 (void)ib_dealloc_pd(device->pd);

 kfree(device->cq_desc);

 device->mr = ((void*)0);
 device->pd = ((void*)0);
}
