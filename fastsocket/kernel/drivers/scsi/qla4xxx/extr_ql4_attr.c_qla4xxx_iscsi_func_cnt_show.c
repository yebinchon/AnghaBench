
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int iscsi_pci_func_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOSYS ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int snprintf (char*,int ,char*,int) ;
 struct scsi_qla_host* to_qla_host (int ) ;

__attribute__((used)) static ssize_t
qla4xxx_iscsi_func_cnt_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct scsi_qla_host *ha = to_qla_host(class_to_shost(dev));

 if (is_qla40XX(ha))
  return -ENOSYS;

 return snprintf(buf, PAGE_SIZE, "0x%04X\n", ha->iscsi_pci_func_cnt);
}
