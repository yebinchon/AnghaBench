
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_flash_test (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_eeprom_test(struct net_device *dev)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 if (qlcnic_82xx_check(adapter))
  return 0;

 return qlcnic_83xx_flash_test(adapter);
}
