
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ioctl_len; scalar_t__ mem_addr; int * mem_ptr; int * ioremap_ptr; int max_cmds; scalar_t__ ioctl_datasize; TYPE_2__* ioctl_data; int ioctl_busaddr; int pcidev; int * subsys; int * nvram; TYPE_2__* logical_drive_info; int logical_drive_info_dma_addr; TYPE_2__* adapt; int * conf; TYPE_2__* enq; int enq_busaddr; } ;
typedef TYPE_1__ ips_ha_t ;
struct TYPE_6__ {int hw_status_start; } ;
typedef int IPS_LD_INFO ;
typedef int IPS_IO_CMD ;
typedef int IPS_ENQ ;
typedef int IPS_ADAPTER ;


 int METHOD_TRACE (char*,int) ;
 int iounmap (int *) ;
 int ips_deallocatescbs (TYPE_1__*,int ) ;
 int kfree (int *) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int ) ;

__attribute__((used)) static void
ips_free(ips_ha_t * ha)
{

 METHOD_TRACE("ips_free", 1);

 if (ha) {
  if (ha->enq) {
   pci_free_consistent(ha->pcidev, sizeof(IPS_ENQ),
         ha->enq, ha->enq_busaddr);
   ha->enq = ((void*)0);
  }

  kfree(ha->conf);
  ha->conf = ((void*)0);

  if (ha->adapt) {
   pci_free_consistent(ha->pcidev,
         sizeof (IPS_ADAPTER) +
         sizeof (IPS_IO_CMD), ha->adapt,
         ha->adapt->hw_status_start);
   ha->adapt = ((void*)0);
  }

  if (ha->logical_drive_info) {
   pci_free_consistent(ha->pcidev,
         sizeof (IPS_LD_INFO),
         ha->logical_drive_info,
         ha->logical_drive_info_dma_addr);
   ha->logical_drive_info = ((void*)0);
  }

  kfree(ha->nvram);
  ha->nvram = ((void*)0);

  kfree(ha->subsys);
  ha->subsys = ((void*)0);

  if (ha->ioctl_data) {
   pci_free_consistent(ha->pcidev, ha->ioctl_len,
         ha->ioctl_data, ha->ioctl_busaddr);
   ha->ioctl_data = ((void*)0);
   ha->ioctl_datasize = 0;
   ha->ioctl_len = 0;
  }
  ips_deallocatescbs(ha, ha->max_cmds);


  if (ha->mem_ptr) {
   iounmap(ha->ioremap_ptr);
   ha->ioremap_ptr = ((void*)0);
   ha->mem_ptr = ((void*)0);
  }

  ha->mem_addr = 0;

 }
}
