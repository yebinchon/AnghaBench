
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_iso_recv {scalar_t__ dma_mode; } ;
struct hpsb_iso {struct ohci_iso_recv* hostdata; } ;


 scalar_t__ BUFFER_FILL_MODE ;
 int ohci_iso_recv_bufferfill_task (struct hpsb_iso*,struct ohci_iso_recv*) ;
 int ohci_iso_recv_packetperbuf_task (struct hpsb_iso*,struct ohci_iso_recv*) ;

__attribute__((used)) static void ohci_iso_recv_task(unsigned long data)
{
 struct hpsb_iso *iso = (struct hpsb_iso*) data;
 struct ohci_iso_recv *recv = iso->hostdata;

 if (recv->dma_mode == BUFFER_FILL_MODE)
  ohci_iso_recv_bufferfill_task(iso, recv);
 else
  ohci_iso_recv_packetperbuf_task(iso, recv);
}
