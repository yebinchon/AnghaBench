
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {unsigned long current_log_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t pmcraid_store_log_level(
 struct device *dev,
 struct device_attribute *attr,
 const char *buf,
 size_t count
)
{
 struct Scsi_Host *shost;
 struct pmcraid_instance *pinstance;
 unsigned long val;

 if (strict_strtoul(buf, 10, &val))
  return -EINVAL;

 if (val > 2)
  return -EINVAL;

 shost = class_to_shost(dev);
 pinstance = (struct pmcraid_instance *)shost->hostdata;
 pinstance->current_log_level = val;

 return strlen(buf);
}
