
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fcoe_capabilities {int dummy; } ;
struct TYPE_3__ {struct fcoe_capabilities fcoe_features; } ;
struct TYPE_4__ {int ulp_type; TYPE_1__ register_data; } ;
struct drv_ctl_info {TYPE_2__ data; int cmd; } ;
struct cnic_local {struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {int (* drv_ctl ) (int ,struct drv_ctl_info*) ;} ;
struct cnic_dev {int netdev; int fcoe_cap; struct cnic_local* cnic_priv; } ;


 int CNIC_ULP_FCOE ;
 int DRV_CTL_ULP_REGISTER_CMD ;
 int DRV_CTL_ULP_UNREGISTER_CMD ;
 int memcpy (struct fcoe_capabilities*,int ,int) ;
 int stub1 (int ,struct drv_ctl_info*) ;

__attribute__((used)) static void cnic_ulp_ctl(struct cnic_dev *dev, int ulp_type, bool reg)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct cnic_eth_dev *ethdev = cp->ethdev;
 struct drv_ctl_info info;
 struct fcoe_capabilities *fcoe_cap =
  &info.data.register_data.fcoe_features;

 if (reg) {
  info.cmd = DRV_CTL_ULP_REGISTER_CMD;
  if (ulp_type == CNIC_ULP_FCOE && dev->fcoe_cap)
   memcpy(fcoe_cap, dev->fcoe_cap, sizeof(*fcoe_cap));
 } else {
  info.cmd = DRV_CTL_ULP_UNREGISTER_CMD;
 }

 info.data.ulp_type = ulp_type;
 ethdev->drv_ctl(dev->netdev, &info);
}
