
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* hw_version; } ;
struct qla_hw_data {int* product_id; TYPE_1__ mr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t
qla2x00_isp_id_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLAFX00(vha->hw))
  return snprintf(buf, PAGE_SIZE, "%s\n",
      vha->hw->mr.hw_version);

 return snprintf(buf, PAGE_SIZE, "%04x %04x %04x %04x\n",
     ha->product_id[0], ha->product_id[1], ha->product_id[2],
     ha->product_id[3]);
}
