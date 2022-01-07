
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int hba_flag; int pcidev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 int HBA_AER_ENABLED ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int pci_cleanup_aer_uncorrect_error_status (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_aer_cleanup_state(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int val, rc = -1;

 if (!isdigit(buf[0]))
  return -EINVAL;
 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;
 if (val != 1)
  return -EINVAL;

 if (phba->hba_flag & HBA_AER_ENABLED)
  rc = pci_cleanup_aer_uncorrect_error_status(phba->pcidev);

 if (rc == 0)
  return strlen(buf);
 else
  return -EPERM;
}
