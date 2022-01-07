
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wl1251 {int dummy; } ;
typedef int off_t ;


 int EE_ADDR ;
 int EE_CTL ;
 int EE_CTL_READ ;
 int EE_DATA ;
 int ETIMEDOUT ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int wl1251_reg_read32 (struct wl1251*,int ) ;
 int wl1251_reg_write32 (struct wl1251*,int ,int) ;

__attribute__((used)) static int wl1251_read_eeprom_byte(struct wl1251 *wl, off_t offset, u8 *data)
{
 unsigned long timeout;

 wl1251_reg_write32(wl, EE_ADDR, offset);
 wl1251_reg_write32(wl, EE_CTL, EE_CTL_READ);


 timeout = jiffies + msecs_to_jiffies(100);
 while (1) {
  if (!(wl1251_reg_read32(wl, EE_CTL) & EE_CTL_READ))
   break;

  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;

  msleep(1);
 }

 *data = wl1251_reg_read32(wl, EE_DATA);
 return 0;
}
