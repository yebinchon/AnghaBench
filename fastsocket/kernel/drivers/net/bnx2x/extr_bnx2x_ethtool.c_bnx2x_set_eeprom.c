
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int len; int offset; int cmd; } ;
struct TYPE_9__ {int * phy; } ;
struct TYPE_6__ {int pmf; } ;
struct bnx2x {scalar_t__ state; TYPE_4__ link_params; int link_vars; TYPE_1__ port; } ;
struct TYPE_8__ {TYPE_2__* port_hw_config; } ;
struct TYPE_7__ {int external_phy_config; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int BP_PORT (struct bnx2x*) ;
 int DP (int,char*,...) ;
 int EAGAIN ;
 int EINVAL ;
 size_t EXT_PHY1 ;
 int MISC_REGISTERS_GPIO_0 ;
 int MISC_REGISTERS_GPIO_HIGH ;
 int MISC_REGISTERS_GPIO_LOW ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101 ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int STATS_EVENT_STOP ;
 scalar_t__ XGXS_EXT_PHY_TYPE (int ) ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_calc_fc_adv (struct bnx2x*) ;
 int bnx2x_ext_phy_hw_reset (struct bnx2x*,int) ;
 int bnx2x_is_nvm_accessible (struct bnx2x*) ;
 int bnx2x_link_report (struct bnx2x*) ;
 int bnx2x_link_reset (TYPE_4__*,int *,int) ;
 int bnx2x_nvram_write (struct bnx2x*,int ,int *,int ) ;
 int bnx2x_phy_init (TYPE_4__*,int *) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int) ;
 int bnx2x_sfx7101_sp_sw_reset (struct bnx2x*,int *) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 TYPE_3__ dev_info ;
 int msleep (int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_set_eeprom(struct net_device *dev,
       struct ethtool_eeprom *eeprom, u8 *eebuf)
{
 struct bnx2x *bp = netdev_priv(dev);
 int port = BP_PORT(bp);
 int rc = 0;
 u32 ext_phy_config;

 if (!bnx2x_is_nvm_accessible(bp)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot access eeprom when the interface is down\n");
  return -EAGAIN;
 }

 DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM, "ethtool_eeprom: cmd %d\n"
    "  magic 0x%x  offset 0x%x (%d)  len 0x%x (%d)\n",
    eeprom->cmd, eeprom->magic, eeprom->offset, eeprom->offset,
    eeprom->len, eeprom->len);




 if ((eeprom->magic >= 0x50485900) && (eeprom->magic <= 0x504859FF) &&
     !bp->port.pmf) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "wrong magic or interface is not pmf\n");
  return -EINVAL;
 }

 ext_phy_config =
  SHMEM_RD(bp,
    dev_info.port_hw_config[port].external_phy_config);

 if (eeprom->magic == 0x50485950) {

  bnx2x_stats_handle(bp, STATS_EVENT_STOP);

  bnx2x_acquire_phy_lock(bp);
  rc |= bnx2x_link_reset(&bp->link_params,
           &bp->link_vars, 0);
  if (XGXS_EXT_PHY_TYPE(ext_phy_config) ==
     PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101)
   bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_0,
           MISC_REGISTERS_GPIO_HIGH, port);
  bnx2x_release_phy_lock(bp);
  bnx2x_link_report(bp);

 } else if (eeprom->magic == 0x50485952) {

  if (bp->state == BNX2X_STATE_OPEN) {
   bnx2x_acquire_phy_lock(bp);
   rc |= bnx2x_link_reset(&bp->link_params,
            &bp->link_vars, 1);

   rc |= bnx2x_phy_init(&bp->link_params,
          &bp->link_vars);
   bnx2x_release_phy_lock(bp);
   bnx2x_calc_fc_adv(bp);
  }
 } else if (eeprom->magic == 0x53985943) {

  if (XGXS_EXT_PHY_TYPE(ext_phy_config) ==
           PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101) {


   bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_0,
           MISC_REGISTERS_GPIO_LOW, port);

   bnx2x_acquire_phy_lock(bp);

   bnx2x_sfx7101_sp_sw_reset(bp,
      &bp->link_params.phy[EXT_PHY1]);


   msleep(500);
   bnx2x_ext_phy_hw_reset(bp, port);
   msleep(500);
   bnx2x_release_phy_lock(bp);
  }
 } else
  rc = bnx2x_nvram_write(bp, eeprom->offset, eebuf, eeprom->len);

 return rc;
}
