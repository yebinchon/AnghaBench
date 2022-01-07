
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int em_message_type; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static ssize_t
ata_scsi_em_message_type_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);

 return snprintf(buf, 23, "%d\n", ap->em_message_type);
}
