
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_mday; int tm_mon; int tm_hour; } ;


 int X1241REG_DT ;
 int X1241REG_HR ;
 int X1241REG_HR_MIL ;
 int X1241REG_MN ;
 int X1241REG_MO ;
 int X1241REG_SC ;
 int X1241REG_SR ;
 int X1241REG_SR_RWEL ;
 int X1241REG_SR_WEL ;
 int X1241REG_Y2K ;
 int X1241REG_YR ;
 void* bin2bcd (int) ;
 int rtc_lock ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xicor_read (int ) ;
 int xicor_write (int ,int) ;

int xicor_set_time(unsigned long t)
{
 struct rtc_time tm;
 int tmp;
 unsigned long flags;

 rtc_time_to_tm(t, &tm);
 tm.tm_year += 1900;

 spin_lock_irqsave(&rtc_lock, flags);

 xicor_write(X1241REG_SR, X1241REG_SR_WEL);
 xicor_write(X1241REG_SR, X1241REG_SR_WEL | X1241REG_SR_RWEL);


 tm.tm_sec = bin2bcd(tm.tm_sec);
 xicor_write(X1241REG_SC, tm.tm_sec);

 tm.tm_min = bin2bcd(tm.tm_min);
 xicor_write(X1241REG_MN, tm.tm_min);

 tm.tm_mday = bin2bcd(tm.tm_mday);
 xicor_write(X1241REG_DT, tm.tm_mday);


 tm.tm_mon ++;
 tm.tm_mon = bin2bcd(tm.tm_mon);
 xicor_write(X1241REG_MO, tm.tm_mon);


 tmp = tm.tm_year / 100;
 tm.tm_year %= 100;
 xicor_write(X1241REG_YR, tm.tm_year);
 xicor_write(X1241REG_Y2K, tmp);


 tmp = xicor_read(X1241REG_HR);
 if (tmp & X1241REG_HR_MIL) {

  tm.tm_hour = bin2bcd(tm.tm_hour);
  tmp = (tmp & ~0x3f) | (tm.tm_hour & 0x3f);
 } else {

  tmp = tmp & ~0x3f;
  if (tm.tm_hour >= 12) {
   tmp |= 0x20;
   tm.tm_hour -= 12;
  }
  tm.tm_hour = bin2bcd(tm.tm_hour);
  tmp |= tm.tm_hour;
 }
 xicor_write(X1241REG_HR, tmp);

 xicor_write(X1241REG_SR, 0);
 spin_unlock_irqrestore(&rtc_lock, flags);

 return 0;
}
