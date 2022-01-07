
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int * mac_addr; } ;
typedef int mac ;


 int ETH_ALEN ;
 int REGISTERS_BASE ;
 int REGISTERS_DOWN_SIZE ;
 int wl1251_read_eeprom (struct wl1251*,int,int *,int) ;
 int wl1251_set_partition (struct wl1251*,int ,int ,int ,int ) ;
 int wl1251_warning (char*) ;

__attribute__((used)) static int wl1251_read_eeprom_mac(struct wl1251 *wl)
{
 u8 mac[ETH_ALEN];
 int i, ret;

 wl1251_set_partition(wl, 0, 0, REGISTERS_BASE, REGISTERS_DOWN_SIZE);

 ret = wl1251_read_eeprom(wl, 0x1c, mac, sizeof(mac));
 if (ret < 0) {
  wl1251_warning("failed to read MAC address from EEPROM");
  return ret;
 }


 for (i = 0; i < ETH_ALEN; i++)
  wl->mac_addr[i] = mac[ETH_ALEN - i - 1];

 return 0;
}
