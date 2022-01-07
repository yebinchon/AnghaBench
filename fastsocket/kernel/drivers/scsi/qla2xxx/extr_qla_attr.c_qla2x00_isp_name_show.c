
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {TYPE_2__* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int device; } ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_3__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
qla2x00_isp_name_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 return snprintf(buf, PAGE_SIZE, "ISP%04X\n", vha->hw->pdev->device);
}
