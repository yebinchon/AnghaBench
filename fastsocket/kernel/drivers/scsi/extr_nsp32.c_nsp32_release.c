
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ n_io_port; scalar_t__ io_port; scalar_t__ irq; scalar_t__ hostdata; } ;
struct TYPE_3__ {scalar_t__ MmioAddress; int sg_paddr; scalar_t__ sg_list; int Pci; int auto_paddr; scalar_t__ autoparam; } ;
typedef TYPE_1__ nsp32_hw_data ;
typedef int nsp32_autoparam ;


 int NSP32_SG_TABLE_SIZE ;
 int free_irq (scalar_t__,TYPE_1__*) ;
 int iounmap (scalar_t__) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;
 int release_region (scalar_t__,scalar_t__) ;

__attribute__((used)) static int nsp32_release(struct Scsi_Host *host)
{
 nsp32_hw_data *data = (nsp32_hw_data *)host->hostdata;

 if (data->autoparam) {
  pci_free_consistent(data->Pci, sizeof(nsp32_autoparam),
        data->autoparam, data->auto_paddr);
 }

 if (data->sg_list) {
  pci_free_consistent(data->Pci, NSP32_SG_TABLE_SIZE,
        data->sg_list, data->sg_paddr);
 }

 if (host->irq) {
  free_irq(host->irq, data);
 }

 if (host->io_port && host->n_io_port) {
  release_region(host->io_port, host->n_io_port);
 }

 if (data->MmioAddress) {
  iounmap(data->MmioAddress);
 }

 return 0;
}
