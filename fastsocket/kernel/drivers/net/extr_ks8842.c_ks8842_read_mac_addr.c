
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ks8842_adapter {int dummy; } ;


 int ETH_ALEN ;
 int REG_MACAR1 ;
 int REG_MACAR2 ;
 int REG_MACAR3 ;
 scalar_t__ REG_MARH ;
 scalar_t__ REG_MARL ;
 scalar_t__ REG_MARM ;
 int ks8842_read16 (struct ks8842_adapter*,int,scalar_t__) ;
 int ks8842_read8 (struct ks8842_adapter*,int,scalar_t__) ;
 int ks8842_write16 (struct ks8842_adapter*,int,int ,int ) ;

__attribute__((used)) static void ks8842_read_mac_addr(struct ks8842_adapter *adapter, u8 *dest)
{
 int i;
 u16 mac;

 for (i = 0; i < ETH_ALEN; i++)
  dest[ETH_ALEN - i - 1] = ks8842_read8(adapter, 2, REG_MARL + i);


 mac = ks8842_read16(adapter, 2, REG_MARL);
 ks8842_write16(adapter, 39, mac, REG_MACAR1);
 mac = ks8842_read16(adapter, 2, REG_MARM);
 ks8842_write16(adapter, 39, mac, REG_MACAR2);
 mac = ks8842_read16(adapter, 2, REG_MARH);
 ks8842_write16(adapter, 39, mac, REG_MACAR3);
}
