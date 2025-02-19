
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ link_state; int (* lpfc_hba_init_link ) (struct lpfc_hba*) ;int (* lpfc_hba_down_link ) (struct lpfc_hba*) ;} ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ LPFC_LINK_DOWN ;
 scalar_t__ LPFC_LINK_UP ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (struct lpfc_hba*) ;
 int stub2 (struct lpfc_hba*) ;

__attribute__((used)) static ssize_t
lpfc_link_state_store(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;

 int status = -EINVAL;

 if ((strncmp(buf, "up", sizeof("up") - 1) == 0) &&
   (phba->link_state == LPFC_LINK_DOWN))
  status = phba->lpfc_hba_init_link(phba);
 else if ((strncmp(buf, "down", sizeof("down") - 1) == 0) &&
   (phba->link_state >= LPFC_LINK_UP))
  status = phba->lpfc_hba_down_link(phba);

 if (status == 0)
  return strlen(buf);
 else
  return status;
}
