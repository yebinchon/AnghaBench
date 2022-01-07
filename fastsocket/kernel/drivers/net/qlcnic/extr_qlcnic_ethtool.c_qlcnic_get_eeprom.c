
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct TYPE_2__ {int vendor; int device; } ;


 int EINVAL ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_rom_fast_read_words (struct qlcnic_adapter*,int,int *,int ) ;

__attribute__((used)) static int
qlcnic_get_eeprom(struct net_device *dev, struct ethtool_eeprom *eeprom,
        u8 *bytes)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 int offset;
 int ret = -1;

 if (qlcnic_83xx_check(adapter))
  return 0;
 if (eeprom->len == 0)
  return -EINVAL;

 eeprom->magic = (adapter->pdev)->vendor |
   ((adapter->pdev)->device << 16);
 offset = eeprom->offset;

 if (qlcnic_82xx_check(adapter))
  ret = qlcnic_rom_fast_read_words(adapter, offset, bytes,
       eeprom->len);
 if (ret < 0)
  return ret;

 return 0;
}
