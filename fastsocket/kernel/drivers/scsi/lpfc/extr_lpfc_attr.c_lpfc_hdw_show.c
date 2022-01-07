
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_3__ {int biuRev; } ;
struct TYPE_4__ {TYPE_1__ rev; } ;
struct lpfc_hba {TYPE_2__ vpd; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
typedef TYPE_2__ lpfc_vpd_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_jedec_to_ascii (int ,char*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
lpfc_hdw_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 char hdw[9];
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 lpfc_vpd_t *vp = &phba->vpd;

 lpfc_jedec_to_ascii(vp->rev.biuRev, hdw);
 return snprintf(buf, PAGE_SIZE, "%s\n", hdw);
}
