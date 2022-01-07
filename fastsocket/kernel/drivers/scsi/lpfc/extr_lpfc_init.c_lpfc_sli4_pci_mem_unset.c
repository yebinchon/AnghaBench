
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int conf_regs_memmap_p; int ctrl_regs_memmap_p; int drbl_regs_memmap_p; int sli_intf; } ;
struct lpfc_hba {TYPE_1__* pcidev; TYPE_2__ sli4_hba; } ;
struct TYPE_3__ {int dev; } ;


 int KERN_ERR ;



 int bf_get (int ,int *) ;
 int dev_printk (int ,int *,char*,int) ;
 int iounmap (int ) ;
 int lpfc_sli_intf_if_type ;

__attribute__((used)) static void
lpfc_sli4_pci_mem_unset(struct lpfc_hba *phba)
{
 uint32_t if_type;
 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);

 switch (if_type) {
 case 130:
  iounmap(phba->sli4_hba.drbl_regs_memmap_p);
  iounmap(phba->sli4_hba.ctrl_regs_memmap_p);
  iounmap(phba->sli4_hba.conf_regs_memmap_p);
  break;
 case 128:
  iounmap(phba->sli4_hba.conf_regs_memmap_p);
  break;
 case 129:
 default:
  dev_printk(KERN_ERR, &phba->pcidev->dev,
      "FATAL - unsupported SLI4 interface type - %d\n",
      if_type);
  break;
 }
}
