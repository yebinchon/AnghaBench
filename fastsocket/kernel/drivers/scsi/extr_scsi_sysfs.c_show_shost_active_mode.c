
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ active_mode; } ;
typedef int ssize_t ;


 scalar_t__ MODE_UNKNOWN ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int show_shost_mode (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;

__attribute__((used)) static ssize_t
show_shost_active_mode(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);

 if (shost->active_mode == MODE_UNKNOWN)
  return snprintf(buf, 20, "unknown\n");
 else
  return show_shost_mode(shost->active_mode, buf);
}
