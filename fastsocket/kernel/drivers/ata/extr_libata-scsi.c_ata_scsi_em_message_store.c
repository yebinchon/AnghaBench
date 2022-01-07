
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int flags; TYPE_1__* ops; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* em_store ) (struct ata_port*,char const*,size_t) ;} ;


 int ATA_FLAG_EM ;
 int EINVAL ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int stub1 (struct ata_port*,char const*,size_t) ;

__attribute__((used)) static ssize_t
ata_scsi_em_message_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);
 if (ap->ops->em_store && (ap->flags & ATA_FLAG_EM))
  return ap->ops->em_store(ap, buf, count);
 return -EINVAL;
}
