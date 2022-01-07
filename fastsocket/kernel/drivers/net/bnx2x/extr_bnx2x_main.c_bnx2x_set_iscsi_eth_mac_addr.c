
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iscsi_mac; } ;
struct bnx2x {int iscsi_l2_mac_obj; TYPE_1__ cnic_eth_dev; } ;


 int BNX2X_ISCSI_ETH_MAC ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_set_mac_one (struct bnx2x*,int ,int *,int,int ,unsigned long*) ;

__attribute__((used)) static int bnx2x_set_iscsi_eth_mac_addr(struct bnx2x *bp)
{
 unsigned long ramrod_flags = 0;

 __set_bit(RAMROD_COMP_WAIT, &ramrod_flags);
 return bnx2x_set_mac_one(bp, bp->cnic_eth_dev.iscsi_mac,
     &bp->iscsi_l2_mac_obj, 1,
     BNX2X_ISCSI_ETH_MAC, &ramrod_flags);
}
