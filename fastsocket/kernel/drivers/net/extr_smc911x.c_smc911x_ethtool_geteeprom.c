
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;


 int E2P_CMD_EPC_CMD_READ_ ;
 int SMC911X_EEPROM_LEN ;
 int memcpy (int *,int *,int ) ;
 int smc911x_ethtool_read_eeprom_byte (struct net_device*,int *) ;
 int smc911x_ethtool_write_eeprom_cmd (struct net_device*,int ,int) ;

__attribute__((used)) static int smc911x_ethtool_geteeprom(struct net_device *dev,
           struct ethtool_eeprom *eeprom, u8 *data)
{
 u8 eebuf[SMC911X_EEPROM_LEN];
 int i, ret;

 for(i=0;i<SMC911X_EEPROM_LEN;i++) {
  if ((ret=smc911x_ethtool_write_eeprom_cmd(dev, E2P_CMD_EPC_CMD_READ_, i ))!=0)
   return ret;
  if ((ret=smc911x_ethtool_read_eeprom_byte(dev, &eebuf[i]))!=0)
   return ret;
  }
 memcpy(data, eebuf+eeprom->offset, eeprom->len);
 return 0;
}
