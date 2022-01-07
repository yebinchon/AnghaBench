
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int* efi_revision; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_1__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t
qla2x00_optrom_efi_version_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 return snprintf(buf, PAGE_SIZE, "%d.%02d\n", ha->efi_revision[1],
     ha->efi_revision[0]);
}
