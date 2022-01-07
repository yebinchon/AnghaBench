
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bnx2x {TYPE_2__* fp; TYPE_3__* dev; TYPE_1__* sp_objs; } ;
struct TYPE_6__ {int dev_addr; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_4__ {int mac_obj; } ;


 int BNX2X_ETH_MAC ;
 int DP (int,char*) ;
 scalar_t__ IS_MF_FCOE_AFEX (struct bnx2x*) ;
 scalar_t__ IS_MF_STORAGE_SD (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int NETIF_MSG_IFDOWN ;
 int NETIF_MSG_IFUP ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_set_mac_one (struct bnx2x*,int ,int *,int,int ,unsigned long*) ;
 int bnx2x_vfpf_config_mac (struct bnx2x*,int ,int ,int) ;
 scalar_t__ is_zero_ether_addr (int ) ;

int bnx2x_set_eth_mac(struct bnx2x *bp, bool set)
{
 if (is_zero_ether_addr(bp->dev->dev_addr) &&
     (IS_MF_STORAGE_SD(bp) || IS_MF_FCOE_AFEX(bp))) {
  DP(NETIF_MSG_IFUP | NETIF_MSG_IFDOWN,
     "Ignoring Zero MAC for STORAGE SD mode\n");
  return 0;
 }

 if (IS_PF(bp)) {
  unsigned long ramrod_flags = 0;

  DP(NETIF_MSG_IFUP, "Adding Eth MAC\n");
  __set_bit(RAMROD_COMP_WAIT, &ramrod_flags);
  return bnx2x_set_mac_one(bp, bp->dev->dev_addr,
      &bp->sp_objs->mac_obj, set,
      BNX2X_ETH_MAC, &ramrod_flags);
 } else {
  return bnx2x_vfpf_config_mac(bp, bp->dev->dev_addr,
          bp->fp->index, 1);
 }
}
