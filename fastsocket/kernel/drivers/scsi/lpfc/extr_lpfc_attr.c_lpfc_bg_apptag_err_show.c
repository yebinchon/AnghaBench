
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ bg_apptag_err_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
lpfc_bg_apptag_err_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;

 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (unsigned long long)phba->bg_apptag_err_cnt);
}
