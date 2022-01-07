
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct ehea_port {int mac_addr; int logical_port_id; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 int EHEA_BCMC_BROADCAST ;
 int EHEA_BCMC_UNTAGGED ;
 int EHEA_BCMC_VLANID_ALL ;
 int EIO ;
 int H_REG_BCMC ;
 scalar_t__ H_SUCCESS ;
 int ehea_error (char*,char*) ;
 scalar_t__ ehea_h_reg_dereg_bcmc (int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static int ehea_broadcast_reg_helper(struct ehea_port *port, u32 hcallid)
{
 int ret = 0;
 u64 hret;
 u8 reg_type;


 reg_type = EHEA_BCMC_BROADCAST | EHEA_BCMC_UNTAGGED;
 hret = ehea_h_reg_dereg_bcmc(port->adapter->handle,
         port->logical_port_id,
         reg_type, port->mac_addr, 0, hcallid);
 if (hret != H_SUCCESS) {
  ehea_error("%sregistering bc address failed (tagged)",
      hcallid == H_REG_BCMC ? "" : "de");
  ret = -EIO;
  goto out_herr;
 }


 reg_type = EHEA_BCMC_BROADCAST | EHEA_BCMC_VLANID_ALL;
 hret = ehea_h_reg_dereg_bcmc(port->adapter->handle,
         port->logical_port_id,
         reg_type, port->mac_addr, 0, hcallid);
 if (hret != H_SUCCESS) {
  ehea_error("%sregistering bc address failed (vlan)",
      hcallid == H_REG_BCMC ? "" : "de");
  ret = -EIO;
 }
out_herr:
 return ret;
}
