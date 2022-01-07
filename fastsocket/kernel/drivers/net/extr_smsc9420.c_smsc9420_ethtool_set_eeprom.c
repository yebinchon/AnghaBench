
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc9420_pdata {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ magic; int len; int offset; } ;


 int E2P_CMD_EPC_CMD_EWDS_ ;
 int E2P_CMD_EPC_CMD_EWEN_ ;
 int EINVAL ;
 scalar_t__ SMSC9420_EEPROM_MAGIC ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int smsc9420_eeprom_enable_access (struct smsc9420_pdata*) ;
 int smsc9420_eeprom_send_cmd (struct smsc9420_pdata*,int ) ;
 int smsc9420_eeprom_write_location (struct smsc9420_pdata*,int ,int ) ;

__attribute__((used)) static int smsc9420_ethtool_set_eeprom(struct net_device *dev,
           struct ethtool_eeprom *eeprom, u8 *data)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);
 int ret;

 if (eeprom->magic != SMSC9420_EEPROM_MAGIC)
  return -EINVAL;

 smsc9420_eeprom_enable_access(pd);
 smsc9420_eeprom_send_cmd(pd, E2P_CMD_EPC_CMD_EWEN_);
 ret = smsc9420_eeprom_write_location(pd, eeprom->offset, *data);
 smsc9420_eeprom_send_cmd(pd, E2P_CMD_EPC_CMD_EWDS_);


 eeprom->len = 1;

 return ret;
}
