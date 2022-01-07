
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int pm_policy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 char* ata_scsi_lpm_get (int ) ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static ssize_t
ata_scsi_lpm_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);
 const char *policy =
  ata_scsi_lpm_get(ap->pm_policy);

 if (!policy)
  return -EINVAL;

 return snprintf(buf, 23, "%s\n", policy);
}
