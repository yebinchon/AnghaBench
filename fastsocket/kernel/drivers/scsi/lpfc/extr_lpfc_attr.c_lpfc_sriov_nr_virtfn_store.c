
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_sriov_nr_virtfn; struct pci_dev* pcidev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EEXIST ;
 int EINVAL ;
 int EPERM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MAX_VFN_PER_PFN ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli_probe_sriov_nr_virtfn (struct lpfc_hba*,int) ;
 int pci_disable_sriov (struct pci_dev*) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_sriov_nr_virtfn_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct pci_dev *pdev = phba->pcidev;
 int val = 0, rc = -EINVAL;


 if (!isdigit(buf[0]))
  return -EINVAL;
 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;
 if (val < 0)
  return -EINVAL;


 if (val == 0) {
  if (phba->cfg_sriov_nr_virtfn > 0) {
   pci_disable_sriov(pdev);
   phba->cfg_sriov_nr_virtfn = 0;
  }
  return strlen(buf);
 }


 if (phba->cfg_sriov_nr_virtfn > 0) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3018 There are %d virtual functions "
    "enabled on physical function.\n",
    phba->cfg_sriov_nr_virtfn);
  return -EEXIST;
 }

 if (val <= LPFC_MAX_VFN_PER_PFN)
  phba->cfg_sriov_nr_virtfn = val;
 else {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3019 Enabling %d virtual functions is not "
    "allowed.\n", val);
  return -EINVAL;
 }

 rc = lpfc_sli_probe_sriov_nr_virtfn(phba, phba->cfg_sriov_nr_virtfn);
 if (rc) {
  phba->cfg_sriov_nr_virtfn = 0;
  rc = -EPERM;
 } else
  rc = strlen(buf);

 return rc;
}
