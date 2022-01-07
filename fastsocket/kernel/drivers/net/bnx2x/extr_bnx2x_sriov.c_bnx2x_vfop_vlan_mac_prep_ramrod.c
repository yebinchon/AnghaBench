
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_vlan_mac_data {int cmd; int vlan_mac_flags; } ;
struct bnx2x_vlan_mac_ramrod_params {int ramrod_flags; struct bnx2x_vlan_mac_data user_req; } ;
struct bnx2x_vfop_vlan_mac_flags {scalar_t__ add; scalar_t__ dont_consume; scalar_t__ single_cmd; scalar_t__ drv_only; } ;


 int BNX2X_DONT_CONSUME_CAM_CREDIT ;
 int BNX2X_VLAN_MAC_ADD ;
 int BNX2X_VLAN_MAC_DEL ;
 int RAMROD_DRV_CLR_ONLY ;
 int RAMROD_EXEC ;
 int memset (struct bnx2x_vlan_mac_ramrod_params*,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
bnx2x_vfop_vlan_mac_prep_ramrod(struct bnx2x_vlan_mac_ramrod_params *ramrod,
    struct bnx2x_vfop_vlan_mac_flags *flags)
{
 struct bnx2x_vlan_mac_data *ureq = &ramrod->user_req;

 memset(ramrod, 0, sizeof(*ramrod));


 if (flags->drv_only)
  set_bit(RAMROD_DRV_CLR_ONLY, &ramrod->ramrod_flags);
 if (flags->single_cmd)
  set_bit(RAMROD_EXEC, &ramrod->ramrod_flags);


 if (flags->dont_consume)
  set_bit(BNX2X_DONT_CONSUME_CAM_CREDIT, &ureq->vlan_mac_flags);


 ureq->cmd = flags->add ? BNX2X_VLAN_MAC_ADD : BNX2X_VLAN_MAC_DEL;
}
