
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int md_template_size; int md_dump_size; int fw_dump_len; int fw_dumped; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_1__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
qla2x00_fw_dump_size_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 uint32_t size;

 if (!ha->fw_dumped)
  size = 0;
 else if (IS_QLA82XX(ha))
  size = ha->md_template_size + ha->md_dump_size;
 else
  size = ha->fw_dump_len;

 return snprintf(buf, PAGE_SIZE, "%d\n", size);
}
