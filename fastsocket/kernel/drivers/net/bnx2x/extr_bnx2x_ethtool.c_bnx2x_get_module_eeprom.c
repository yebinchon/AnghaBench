
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {unsigned int offset; unsigned int len; } ;
struct TYPE_2__ {int * phy; } ;
struct bnx2x {TYPE_1__ link_params; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int DP (int,char*) ;
 int EAGAIN ;
 int EINVAL ;
 unsigned int ETH_MODULE_SFF_8079_LEN ;
 unsigned int ETH_MODULE_SFF_8472_LEN ;
 int I2C_DEV_ADDR_A0 ;
 int I2C_DEV_ADDR_A2 ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_get_cur_phy_idx (struct bnx2x*) ;
 int bnx2x_is_nvm_accessible (struct bnx2x*) ;
 int bnx2x_read_sfp_module_eeprom (int *,TYPE_1__*,int ,unsigned int,unsigned int,int *) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_module_eeprom(struct net_device *dev,
       struct ethtool_eeprom *ee,
       u8 *data)
{
 struct bnx2x *bp = netdev_priv(dev);
 int rc = -EINVAL, phy_idx;
 u8 *user_data = data;
 unsigned int start_addr = ee->offset, xfer_size = 0;

 if (!bnx2x_is_nvm_accessible(bp)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot access eeprom when the interface is down\n");
  return -EAGAIN;
 }

 phy_idx = bnx2x_get_cur_phy_idx(bp);


 if (start_addr < ETH_MODULE_SFF_8079_LEN) {

  if (start_addr + ee->len > ETH_MODULE_SFF_8079_LEN)
   xfer_size = ETH_MODULE_SFF_8079_LEN - start_addr;
  else
   xfer_size = ee->len;
  bnx2x_acquire_phy_lock(bp);
  rc = bnx2x_read_sfp_module_eeprom(&bp->link_params.phy[phy_idx],
        &bp->link_params,
        I2C_DEV_ADDR_A0,
        start_addr,
        xfer_size,
        user_data);
  bnx2x_release_phy_lock(bp);
  if (rc) {
   DP(BNX2X_MSG_ETHTOOL, "Failed reading A0 section\n");

   return -EINVAL;
  }
  user_data += xfer_size;
  start_addr += xfer_size;
 }


 if ((start_addr >= ETH_MODULE_SFF_8079_LEN) &&
     (start_addr < ETH_MODULE_SFF_8472_LEN)) {
  xfer_size = ee->len - xfer_size;

  if (start_addr + xfer_size > ETH_MODULE_SFF_8472_LEN)
   xfer_size = ETH_MODULE_SFF_8472_LEN - start_addr;
  start_addr -= ETH_MODULE_SFF_8079_LEN;
  bnx2x_acquire_phy_lock(bp);
  rc = bnx2x_read_sfp_module_eeprom(&bp->link_params.phy[phy_idx],
        &bp->link_params,
        I2C_DEV_ADDR_A2,
        start_addr,
        xfer_size,
        user_data);
  bnx2x_release_phy_lock(bp);
  if (rc) {
   DP(BNX2X_MSG_ETHTOOL, "Failed reading A2 section\n");
   return -EINVAL;
  }
 }
 return rc;
}
