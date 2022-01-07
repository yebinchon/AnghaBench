
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 char* lpfc_info (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
lpfc_info_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct Scsi_Host *host = class_to_shost(dev);

 return snprintf(buf, PAGE_SIZE, "%s\n",lpfc_info(host));
}
