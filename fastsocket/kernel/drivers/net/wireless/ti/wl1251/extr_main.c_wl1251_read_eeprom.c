
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int dummy; } ;
typedef scalar_t__ off_t ;


 int EE_START ;
 int wl1251_read_eeprom_byte (struct wl1251*,scalar_t__,int *) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int ) ;

__attribute__((used)) static int wl1251_read_eeprom(struct wl1251 *wl, off_t offset,
         u8 *data, size_t len)
{
 size_t i;
 int ret;

 wl1251_reg_write32(wl, EE_START, 0);

 for (i = 0; i < len; i++) {
  ret = wl1251_read_eeprom_byte(wl, offset + i, &data[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
