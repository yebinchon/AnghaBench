
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_sli_sriov_nr_virtfn_get (struct lpfc_hba*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
lpfc_sriov_hw_max_virtfn_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 uint16_t max_nr_virtfn;

 max_nr_virtfn = lpfc_sli_sriov_nr_virtfn_get(phba);
 return snprintf(buf, PAGE_SIZE, "%d\n", max_nr_virtfn);
}
