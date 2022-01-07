
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int LBS_EEPROM_LEN ;

__attribute__((used)) static int lbs_ethtool_get_eeprom_len(struct net_device *dev)
{
 return LBS_EEPROM_LEN;
}
