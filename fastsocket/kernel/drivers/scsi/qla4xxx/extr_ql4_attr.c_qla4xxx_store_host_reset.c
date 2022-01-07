
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int class_to_shost (struct device*) ;
 int qla4xxx_check_reset_type (char*) ;
 int qla4xxx_host_reset (struct scsi_qla_host*,int) ;
 int sscanf (char const*,char*,char*) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_store_host_reset(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));
 int ret = -EINVAL;
 char str[10];
 int type;

 sscanf(buf, "%s", str);
 type = qla4xxx_check_reset_type(str);

 if (!type)
  goto exit_store_host_reset;

 ret = qla4xxx_host_reset(ha, type);

exit_store_host_reset:
 if (ret == 0)
  ret = count;
 return ret;
}
