
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_10__ {TYPE_2__* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_8__ {scalar_t__ eeh_busy; } ;
struct TYPE_9__ {TYPE_1__ flags; int thermal_support; } ;


 int PAGE_SIZE ;
 scalar_t__ QLA_SUCCESS ;
 int class_to_shost (struct device*) ;
 int ql_log (int ,TYPE_3__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla2x00_get_thermal_temp (TYPE_3__*,int*) ;
 scalar_t__ qla2x00_reset_active (TYPE_3__*) ;
 TYPE_3__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t
qla2x00_thermal_temp_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 uint16_t temp = 0;

 if (!vha->hw->thermal_support) {
  ql_log(ql_log_warn, vha, 0x70db,
      "Thermal not supported by this card.\n");
  goto done;
 }

 if (qla2x00_reset_active(vha)) {
  ql_log(ql_log_warn, vha, 0x70dc, "ISP reset active.\n");
  goto done;
 }

 if (vha->hw->flags.eeh_busy) {
  ql_log(ql_log_warn, vha, 0x70dd, "PCI EEH busy.\n");
  goto done;
 }

 if (qla2x00_get_thermal_temp(vha, &temp) == QLA_SUCCESS)
  return snprintf(buf, PAGE_SIZE, "%d\n", temp);

done:
 return snprintf(buf, PAGE_SIZE, "\n");
}
