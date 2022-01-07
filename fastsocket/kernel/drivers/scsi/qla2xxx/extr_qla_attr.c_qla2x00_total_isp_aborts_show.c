
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int total_isp_aborts; } ;
struct TYPE_5__ {TYPE_1__ qla_stats; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
qla2x00_total_isp_aborts_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 return snprintf(buf, PAGE_SIZE, "%d\n",
     vha->qla_stats.total_isp_aborts);
}
