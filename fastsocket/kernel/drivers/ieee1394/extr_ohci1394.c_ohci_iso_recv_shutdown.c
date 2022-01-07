
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_iso_recv {int prog; scalar_t__ task_active; int task; int ohci; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;


 int dma_prog_region_free (int *) ;
 int kfree (struct ohci_iso_recv*) ;
 int ohci1394_unregister_iso_tasklet (int ,int *) ;
 int ohci_iso_recv_stop (struct hpsb_iso*) ;

__attribute__((used)) static void ohci_iso_recv_shutdown(struct hpsb_iso *iso)
{
 struct ohci_iso_recv *recv = iso->hostdata;

 if (recv->task_active) {
  ohci_iso_recv_stop(iso);
  ohci1394_unregister_iso_tasklet(recv->ohci, &recv->task);
  recv->task_active = 0;
 }

 dma_prog_region_free(&recv->prog);
 kfree(recv);
 iso->hostdata = ((void*)0);
}
