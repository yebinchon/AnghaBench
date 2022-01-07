
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int NETXEN_FLASH_TOTAL_SIZE ;

__attribute__((used)) static int netxen_nic_get_eeprom_len(struct net_device *dev)
{
 return NETXEN_FLASH_TOTAL_SIZE;
}
