
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vlan_mac_flags; } ;
struct bnx2x_vlan_mac_ramrod_params {TYPE_1__ user_req; } ;
struct bnx2x_vfop_vlan_mac_flags {int dummy; } ;


 int BNX2X_ETH_MAC ;
 int bnx2x_vfop_vlan_mac_prep_ramrod (struct bnx2x_vlan_mac_ramrod_params*,struct bnx2x_vfop_vlan_mac_flags*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void
bnx2x_vfop_mac_prep_ramrod(struct bnx2x_vlan_mac_ramrod_params *ramrod,
      struct bnx2x_vfop_vlan_mac_flags *flags)
{
 bnx2x_vfop_vlan_mac_prep_ramrod(ramrod, flags);
 set_bit(BNX2X_ETH_MAC, &ramrod->user_req.vlan_mac_flags);
}
