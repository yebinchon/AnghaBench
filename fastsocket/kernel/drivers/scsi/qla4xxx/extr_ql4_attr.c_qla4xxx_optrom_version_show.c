
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bootload_major; int bootload_minor; int bootload_patch; int bootload_build; } ;
struct scsi_qla_host {TYPE_1__ fw_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_optrom_version_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));
 return snprintf(buf, PAGE_SIZE, "%d.%02d.%02d.%02d\n",
   ha->fw_info.bootload_major, ha->fw_info.bootload_minor,
   ha->fw_info.bootload_patch, ha->fw_info.bootload_build);
}
