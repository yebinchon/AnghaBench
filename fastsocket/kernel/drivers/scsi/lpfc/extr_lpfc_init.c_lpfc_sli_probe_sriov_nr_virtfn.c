
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pci_dev {int dummy; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int EINVAL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_sli_sriov_nr_virtfn_get (struct lpfc_hba*) ;
 int pci_enable_sriov (struct pci_dev*,int) ;

int
lpfc_sli_probe_sriov_nr_virtfn(struct lpfc_hba *phba, int nr_vfn)
{
 struct pci_dev *pdev = phba->pcidev;
 uint16_t max_nr_vfn;
 int rc;

 max_nr_vfn = lpfc_sli_sriov_nr_virtfn_get(phba);
 if (nr_vfn > max_nr_vfn) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3057 Requested vfs (%d) greater than "
    "supported vfs (%d)", nr_vfn, max_nr_vfn);
  return -EINVAL;
 }

 rc = pci_enable_sriov(pdev, nr_vfn);
 if (rc) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
    "2806 Failed to enable sriov on this device "
    "with vfn number nr_vf:%d, rc:%d\n",
    nr_vfn, rc);
 } else
  lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
    "2807 Successful enable sriov on this device "
    "with vfn number nr_vf:%d\n", nr_vfn);
 return rc;
}
