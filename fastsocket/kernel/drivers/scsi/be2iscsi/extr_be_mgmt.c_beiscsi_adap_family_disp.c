
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct beiscsi_hba {TYPE_1__* pcidev; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int device; } ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,...) ;

ssize_t
beiscsi_adap_family_disp(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 uint16_t dev_id = 0;
 struct Scsi_Host *shost = class_to_shost(dev);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);

 dev_id = phba->pcidev->device;
 switch (dev_id) {
 case 133:
 case 131:
 case 130:
  return snprintf(buf, PAGE_SIZE, "BE2 Adapter Family\n");
  break;
 case 132:
 case 129:
  return snprintf(buf, PAGE_SIZE, "BE3-R Adapter Family\n");
  break;
 case 128:
  return snprintf(buf, PAGE_SIZE, "Skyhawk-R Adapter Family\n");
  break;
 default:
  return snprintf(buf, PAGE_SIZE,
    "Unkown Adapter Family: 0x%x\n", dev_id);
  break;
 }
}
