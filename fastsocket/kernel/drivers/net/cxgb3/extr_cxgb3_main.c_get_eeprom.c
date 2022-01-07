
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct port_info {struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
struct adapter {int dummy; } ;
typedef int __le32 ;


 int EEPROMSIZE ;
 int EEPROM_MAGIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int memcpy (int *,int *,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t3_seeprom_read (struct adapter*,int,int *) ;

__attribute__((used)) static int get_eeprom(struct net_device *dev, struct ethtool_eeprom *e,
        u8 * data)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 int i, err = 0;

 u8 *buf = kmalloc(EEPROMSIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 e->magic = EEPROM_MAGIC;
 for (i = e->offset & ~3; !err && i < e->offset + e->len; i += 4)
  err = t3_seeprom_read(adapter, i, (__le32 *) & buf[i]);

 if (!err)
  memcpy(data, buf + e->offset, e->len);
 kfree(buf);
 return err;
}
