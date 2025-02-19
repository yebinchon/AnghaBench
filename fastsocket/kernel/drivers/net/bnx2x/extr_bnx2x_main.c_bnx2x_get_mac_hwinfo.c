
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_8__ {int mac_addr; } ;
struct bnx2x {TYPE_5__* dev; TYPE_3__* pdev; TYPE_2__ link_params; } ;
struct TYPE_12__ {TYPE_1__* port_hw_config; } ;
struct TYPE_11__ {int dev_addr; int perm_addr; } ;
struct TYPE_10__ {int mac_lower; int mac_upper; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int mac_lower; int mac_upper; } ;


 int BNX2X_ERROR (char*) ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 scalar_t__ BP_NOMCP (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 int ETH_ALEN ;
 scalar_t__ FUNC_MF_CFG_LOWERMAC_DEFAULT ;
 scalar_t__ FUNC_MF_CFG_UPPERMAC_DEFAULT ;
 scalar_t__ IS_MF (struct bnx2x*) ;
 scalar_t__ MF_CFG_RD (struct bnx2x*,int ) ;
 scalar_t__ SHMEM_RD (struct bnx2x*,int ) ;
 int bnx2x_get_cnic_mac_hwinfo (struct bnx2x*) ;
 int bnx2x_is_valid_ether_addr (struct bnx2x*,int ) ;
 int bnx2x_set_mac_buf (int ,scalar_t__,scalar_t__) ;
 int dev_err (int *,char*,int ) ;
 TYPE_6__ dev_info ;
 int eth_hw_addr_random (TYPE_5__*) ;
 TYPE_4__* func_mf_config ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void bnx2x_get_mac_hwinfo(struct bnx2x *bp)
{
 u32 val, val2;
 int func = BP_ABS_FUNC(bp);
 int port = BP_PORT(bp);


 memset(bp->dev->dev_addr, 0, ETH_ALEN);

 if (BP_NOMCP(bp)) {
  BNX2X_ERROR("warning: random MAC workaround active\n");
  eth_hw_addr_random(bp->dev);
 } else if (IS_MF(bp)) {
  val2 = MF_CFG_RD(bp, func_mf_config[func].mac_upper);
  val = MF_CFG_RD(bp, func_mf_config[func].mac_lower);
  if ((val2 != FUNC_MF_CFG_UPPERMAC_DEFAULT) &&
      (val != FUNC_MF_CFG_LOWERMAC_DEFAULT))
   bnx2x_set_mac_buf(bp->dev->dev_addr, val, val2);

  if (CNIC_SUPPORT(bp))
   bnx2x_get_cnic_mac_hwinfo(bp);
 } else {

  val2 = SHMEM_RD(bp, dev_info.port_hw_config[port].mac_upper);
  val = SHMEM_RD(bp, dev_info.port_hw_config[port].mac_lower);
  bnx2x_set_mac_buf(bp->dev->dev_addr, val, val2);

  if (CNIC_SUPPORT(bp))
   bnx2x_get_cnic_mac_hwinfo(bp);
 }

 memcpy(bp->link_params.mac_addr, bp->dev->dev_addr, ETH_ALEN);
 memcpy(bp->dev->perm_addr, bp->dev->dev_addr, ETH_ALEN);

 if (!bnx2x_is_valid_ether_addr(bp, bp->dev->dev_addr))
  dev_err(&bp->pdev->dev,
   "bad Ethernet MAC address configuration: %pM\n"
   "change it manually before bringing up the appropriate network interface\n",
   bp->dev->dev_addr);
}
