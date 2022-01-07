
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int transfer_bytes; } ;
struct TYPE_5__ {TYPE_1__ bidi_stats; int hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int IS_BIDI_CAPABLE (int ) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t
qla2x00_diag_megabytes_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));

 if (!IS_BIDI_CAPABLE(vha->hw))
  return snprintf(buf, PAGE_SIZE, "\n");

 return snprintf(buf, PAGE_SIZE, "%llu\n", vha->bidi_stats.transfer_bytes >> 20);
}
