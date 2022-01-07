
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {int word0; } ;
struct TYPE_3__ {void* conf_regs_memmap_p; void* ctrl_regs_memmap_p; void* drbl_regs_memmap_p; TYPE_2__ sli_intf; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; void* pci_bar2_map; void* pci_bar1_map; void* pci_bar0_map; struct pci_dev* pcidev; } ;


 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_SLI_INTF ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_0 ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_INTF_VALID ;
 int LPFC_VF0 ;
 scalar_t__ bf_get (int ,TYPE_2__*) ;
 int dev_printk (int ,int *,char*) ;
 void* ioremap (void*,unsigned long) ;
 int iounmap (void*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ) ;
 int lpfc_sli4_bar0_register_memmap (struct lpfc_hba*,scalar_t__) ;
 int lpfc_sli4_bar1_register_memmap (struct lpfc_hba*) ;
 int lpfc_sli4_bar2_register_memmap (struct lpfc_hba*,int ) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sli_intf_valid ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int ,int *) ;
 unsigned long pci_resource_len (struct pci_dev*,int) ;
 void* pci_resource_start (struct pci_dev*,int) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;

__attribute__((used)) static int
lpfc_sli4_pci_mem_setup(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;
 unsigned long bar0map_len, bar1map_len, bar2map_len;
 int error = -ENODEV;
 uint32_t if_type;


 if (!phba->pcidev)
  return error;
 else
  pdev = phba->pcidev;


 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)) != 0)
  if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)) != 0)
   return error;





 if (pci_read_config_dword(pdev, LPFC_SLI_INTF,
      &phba->sli4_hba.sli_intf.word0)) {
  return error;
 }


 if (bf_get(lpfc_sli_intf_valid, &phba->sli4_hba.sli_intf) !=
     LPFC_SLI_INTF_VALID) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2894 SLI_INTF reg contents invalid "
    "sli_intf reg 0x%x\n",
    phba->sli4_hba.sli_intf.word0);
  return error;
 }

 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);






 if (pci_resource_start(pdev, 0)) {
  phba->pci_bar0_map = pci_resource_start(pdev, 0);
  bar0map_len = pci_resource_len(pdev, 0);





  phba->sli4_hba.conf_regs_memmap_p =
   ioremap(phba->pci_bar0_map, bar0map_len);
  if (!phba->sli4_hba.conf_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
       "ioremap failed for SLI4 PCI config "
       "registers.\n");
   goto out;
  }

  lpfc_sli4_bar0_register_memmap(phba, if_type);
 } else {
  phba->pci_bar0_map = pci_resource_start(pdev, 1);
  bar0map_len = pci_resource_len(pdev, 1);
  if (if_type == LPFC_SLI_INTF_IF_TYPE_2) {
   dev_printk(KERN_ERR, &pdev->dev,
      "FATAL - No BAR0 mapping for SLI4, if_type 2\n");
   goto out;
  }
  phba->sli4_hba.conf_regs_memmap_p =
    ioremap(phba->pci_bar0_map, bar0map_len);
  if (!phba->sli4_hba.conf_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
    "ioremap failed for SLI4 PCI config "
    "registers.\n");
    goto out;
  }
  lpfc_sli4_bar0_register_memmap(phba, if_type);
 }

 if ((if_type == LPFC_SLI_INTF_IF_TYPE_0) &&
     (pci_resource_start(pdev, 2))) {




  phba->pci_bar1_map = pci_resource_start(pdev, 2);
  bar1map_len = pci_resource_len(pdev, 2);
  phba->sli4_hba.ctrl_regs_memmap_p =
    ioremap(phba->pci_bar1_map, bar1map_len);
  if (!phba->sli4_hba.ctrl_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
      "ioremap failed for SLI4 HBA control registers.\n");
   goto out_iounmap_conf;
  }
  lpfc_sli4_bar1_register_memmap(phba);
 }

 if ((if_type == LPFC_SLI_INTF_IF_TYPE_0) &&
     (pci_resource_start(pdev, 4))) {




  phba->pci_bar2_map = pci_resource_start(pdev, 4);
  bar2map_len = pci_resource_len(pdev, 4);
  phba->sli4_hba.drbl_regs_memmap_p =
    ioremap(phba->pci_bar2_map, bar2map_len);
  if (!phba->sli4_hba.drbl_regs_memmap_p) {
   dev_printk(KERN_ERR, &pdev->dev,
      "ioremap failed for SLI4 HBA doorbell registers.\n");
   goto out_iounmap_ctrl;
  }
  error = lpfc_sli4_bar2_register_memmap(phba, LPFC_VF0);
  if (error)
   goto out_iounmap_all;
 }

 return 0;

out_iounmap_all:
 iounmap(phba->sli4_hba.drbl_regs_memmap_p);
out_iounmap_ctrl:
 iounmap(phba->sli4_hba.ctrl_regs_memmap_p);
out_iounmap_conf:
 iounmap(phba->sli4_hba.conf_regs_memmap_p);
out:
 return error;
}
