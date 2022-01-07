
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int soft_wwn_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_soft_wwn_key ;
 unsigned int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,unsigned int) ;

__attribute__((used)) static ssize_t
lpfc_soft_wwn_enable_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 unsigned int cnt = count;
 if (buf[cnt-1] == '\n')
  cnt--;

 if ((cnt != strlen(lpfc_soft_wwn_key)) ||
     (strncmp(buf, lpfc_soft_wwn_key, strlen(lpfc_soft_wwn_key)) != 0))
  return -EINVAL;

 phba->soft_wwn_enable = 1;
 return count;
}
