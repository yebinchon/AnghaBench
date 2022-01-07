
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int sp_rtnl_task; int sp_rtnl_state; int dev; } ;
struct TYPE_4__ {TYPE_1__* port_hw_config; } ;
struct TYPE_3__ {int external_phy_config; } ;


 int BNX2X_SP_RTNL_FAN_FAILURE ;
 int BP_PORT (struct bnx2x*) ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int SHMEM_WR (struct bnx2x*,int ,int ) ;
 TYPE_2__ dev_info ;
 int netdev_err (int ,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static void bnx2x_fan_failure(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 u32 ext_phy_config;

 ext_phy_config =
  SHMEM_RD(bp,
    dev_info.port_hw_config[port].external_phy_config);

 ext_phy_config &= ~PORT_HW_CFG_XGXS_EXT_PHY_TYPE_MASK;
 ext_phy_config |= PORT_HW_CFG_XGXS_EXT_PHY_TYPE_FAILURE;
 SHMEM_WR(bp, dev_info.port_hw_config[port].external_phy_config,
   ext_phy_config);


 netdev_err(bp->dev, "Fan Failure on Network Controller has caused the driver to shutdown the card to prevent permanent damage.\n"
       "Please contact OEM Support for assistance\n");





 smp_mb__before_clear_bit();
 set_bit(BNX2X_SP_RTNL_FAN_FAILURE, &bp->sp_rtnl_state);
 smp_mb__after_clear_bit();
 schedule_delayed_work(&bp->sp_rtnl_task, 0);
}
