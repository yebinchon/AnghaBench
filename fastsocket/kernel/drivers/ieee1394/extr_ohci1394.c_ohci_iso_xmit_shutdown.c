
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_iso_xmit {int prog; scalar_t__ task_active; int task; int ohci; } ;
struct hpsb_iso {struct ohci_iso_xmit* hostdata; } ;


 int dma_prog_region_free (int *) ;
 int kfree (struct ohci_iso_xmit*) ;
 int ohci1394_unregister_iso_tasklet (int ,int *) ;
 int ohci_iso_xmit_stop (struct hpsb_iso*) ;

__attribute__((used)) static void ohci_iso_xmit_shutdown(struct hpsb_iso *iso)
{
 struct ohci_iso_xmit *xmit = iso->hostdata;

 if (xmit->task_active) {
  ohci_iso_xmit_stop(iso);
  ohci1394_unregister_iso_tasklet(xmit->ohci, &xmit->task);
  xmit->task_active = 0;
 }

 dma_prog_region_free(&xmit->prog);
 kfree(xmit);
 iso->hostdata = ((void*)0);
}
