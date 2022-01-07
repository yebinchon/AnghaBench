
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smc911x_local {int dummy; } ;
struct net_device {int dummy; } ;


 int SMC_GET_E2P_DATA (struct smc911x_local*) ;
 struct smc911x_local* netdev_priv (struct net_device*) ;
 int smc911x_ethtool_wait_eeprom_ready (struct net_device*) ;

__attribute__((used)) static inline int smc911x_ethtool_read_eeprom_byte(struct net_device *dev,
             u8 *data)
{
 struct smc911x_local *lp = netdev_priv(dev);
 int ret;

 if ((ret = smc911x_ethtool_wait_eeprom_ready(dev))!=0)
  return ret;
 *data = SMC_GET_E2P_DATA(lp);
 return 0;
}
