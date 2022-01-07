
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {unsigned int sc_data_direction; } ;
struct mscp {int data_len; int data_address; int sense_len; int sense_addr; struct scsi_cmnd* SCpnt; } ;
struct TYPE_2__ {int pdev; struct mscp* cp; } ;


 scalar_t__ DEV2H (int ) ;
 TYPE_1__* HD (unsigned int) ;
 unsigned int PCI_DMA_BIDIRECTIONAL ;
 unsigned int PCI_DMA_FROMDEVICE ;
 int pci_unmap_single (int ,scalar_t__,scalar_t__,unsigned int) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void unmap_dma(unsigned int i, unsigned int j) {
   unsigned int pci_dir;
   struct mscp *cpp;
   struct scsi_cmnd *SCpnt;

   cpp = &HD(j)->cp[i]; SCpnt = cpp->SCpnt;
   pci_dir = SCpnt->sc_data_direction;

   if (DEV2H(cpp->sense_addr))
      pci_unmap_single(HD(j)->pdev, DEV2H(cpp->sense_addr),
                       DEV2H(cpp->sense_len), PCI_DMA_FROMDEVICE);

   scsi_dma_unmap(SCpnt);

   if (!DEV2H(cpp->data_len)) pci_dir = PCI_DMA_BIDIRECTIONAL;

   if (DEV2H(cpp->data_address))
      pci_unmap_single(HD(j)->pdev, DEV2H(cpp->data_address),
                       DEV2H(cpp->data_len), pci_dir);
}
