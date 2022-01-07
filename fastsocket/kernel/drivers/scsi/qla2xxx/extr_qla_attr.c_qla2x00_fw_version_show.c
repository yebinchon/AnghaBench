
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_6__ {char* (* fw_version_str ) (TYPE_2__*,char*) ;} ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,char*) ;
 char* stub1 (TYPE_2__*,char*) ;
 char* stub2 (TYPE_2__*,char*) ;

__attribute__((used)) static ssize_t
qla2x00_fw_version_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 char fw_str[128];

 return snprintf(buf, PAGE_SIZE, "%s\n",
     ha->isp_ops->fw_version_str(vha, fw_str));
}
