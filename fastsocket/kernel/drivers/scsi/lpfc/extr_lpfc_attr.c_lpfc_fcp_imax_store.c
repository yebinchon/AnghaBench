
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_fcp_io_channel; scalar_t__ cfg_fcp_imax; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ LPFC_MAX_EQ_DELAY ;
 int LPFC_MAX_IMAX ;
 int LPFC_MIN_IMAX ;
 scalar_t__ LPFC_SLI_REV4 ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int lpfc_modify_fcp_eq_delay (struct lpfc_hba*,int) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_fcp_imax_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int val = 0, i;


 if (phba->sli_rev != LPFC_SLI_REV4)
  return -EINVAL;


 if (!isdigit(buf[0]))
  return -EINVAL;
 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;





 if (val < LPFC_MIN_IMAX || val > LPFC_MAX_IMAX)
  return -EINVAL;

 phba->cfg_fcp_imax = (uint32_t)val;
 for (i = 0; i < phba->cfg_fcp_io_channel; i += LPFC_MAX_EQ_DELAY)
  lpfc_modify_fcp_eq_delay(phba, i);

 return strlen(buf);
}
