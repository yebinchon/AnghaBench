
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int* fcoe_vn_port_mac; int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_CNA_CAPABLE (int ) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 TYPE_1__* shost_priv (int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t
qla2x00_vn_port_mac_address_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));

 if (!IS_CNA_CAPABLE(vha->hw))
  return snprintf(buf, PAGE_SIZE, "\n");

 return snprintf(buf, PAGE_SIZE, "%02x:%02x:%02x:%02x:%02x:%02x\n",
     vha->fcoe_vn_port_mac[5], vha->fcoe_vn_port_mac[4],
     vha->fcoe_vn_port_mac[3], vha->fcoe_vn_port_mac[2],
     vha->fcoe_vn_port_mac[1], vha->fcoe_vn_port_mac[0]);
}
