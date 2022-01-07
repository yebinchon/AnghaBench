
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {unsigned int sc_data_direction; } ;
struct mscp {int data_len; int data_address; int sense_len; int sense_addr; struct scsi_cmnd* SCpnt; } ;
struct hostdata {int pdev; struct mscp* cp; } ;


 scalar_t__ DEV2H (int ) ;
 unsigned int PCI_DMA_BIDIRECTIONAL ;
 unsigned int PCI_DMA_FROMDEVICE ;
 int pci_dma_sync_sg_for_cpu (int ,int ,scalar_t__,unsigned int) ;
 int pci_dma_sync_single_for_cpu (int ,scalar_t__,scalar_t__,unsigned int) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;

__attribute__((used)) static void sync_dma(unsigned int i, struct hostdata *ha)
{
 unsigned int pci_dir;
 struct mscp *cpp;
 struct scsi_cmnd *SCpnt;

 cpp = &ha->cp[i];
 SCpnt = cpp->SCpnt;
 pci_dir = SCpnt->sc_data_direction;

 if (DEV2H(cpp->sense_addr))
  pci_dma_sync_single_for_cpu(ha->pdev, DEV2H(cpp->sense_addr),
         DEV2H(cpp->sense_len),
         PCI_DMA_FROMDEVICE);

 if (scsi_sg_count(SCpnt))
  pci_dma_sync_sg_for_cpu(ha->pdev, scsi_sglist(SCpnt),
     scsi_sg_count(SCpnt), pci_dir);

 if (!DEV2H(cpp->data_len))
  pci_dir = PCI_DMA_BIDIRECTIONAL;

 if (DEV2H(cpp->data_address))
  pci_dma_sync_single_for_cpu(ha->pdev,
         DEV2H(cpp->data_address),
         DEV2H(cpp->data_len), pci_dir);
}
