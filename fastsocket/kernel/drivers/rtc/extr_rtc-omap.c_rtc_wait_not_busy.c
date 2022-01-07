
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ OMAP_RTC_STATUS_BUSY ;
 int OMAP_RTC_STATUS_REG ;
 int rtc_read (int ) ;
 int udelay (int) ;

__attribute__((used)) static void rtc_wait_not_busy(void)
{
 int count = 0;
 u8 status;


 for (count = 0; count < 50; count++) {
  status = rtc_read(OMAP_RTC_STATUS_REG);
  if ((status & (u8)OMAP_RTC_STATUS_BUSY) == 0)
   break;
  udelay(1);
 }

}
