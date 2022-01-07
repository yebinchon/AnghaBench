
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;
typedef enum link_pm { ____Placeholder_link_pm } link_pm ;
struct TYPE_3__ {int value; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 size_t EINVAL ;
 int ata_lpm_schedule (struct ata_port*,int) ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 TYPE_1__* link_pm_policy ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int const) ;

__attribute__((used)) static ssize_t ata_scsi_lpm_put(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);
 enum link_pm policy = 0;
 int i;
 for (i = 1; i < ARRAY_SIZE(link_pm_policy); i++) {
  const int len = strlen(link_pm_policy[i].name);
  if (strncmp(link_pm_policy[i].name, buf, len) == 0 &&
     buf[len] == '\n') {
   policy = link_pm_policy[i].value;
   break;
  }
 }
 if (!policy)
  return -EINVAL;

 ata_lpm_schedule(ap, policy);
 return count;
}
