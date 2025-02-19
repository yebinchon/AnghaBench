
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;


 int M41T81REG_DT ;
 int M41T81REG_DY ;
 int M41T81REG_HR ;
 int M41T81REG_MN ;
 int M41T81REG_MO ;
 int M41T81REG_SC ;
 int M41T81REG_YR ;
 void* bin2bcd (int) ;
 int m41t81_read (int ) ;
 int m41t81_write (int ,int) ;
 int rtc_lock ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int m41t81_set_time(unsigned long t)
{
 struct rtc_time tm;
 unsigned long flags;


 rtc_time_to_tm(t, &tm);







 spin_lock_irqsave(&rtc_lock, flags);
 tm.tm_sec = bin2bcd(tm.tm_sec);
 m41t81_write(M41T81REG_SC, tm.tm_sec);

 tm.tm_min = bin2bcd(tm.tm_min);
 m41t81_write(M41T81REG_MN, tm.tm_min);

 tm.tm_hour = bin2bcd(tm.tm_hour);
 tm.tm_hour = (tm.tm_hour & 0x3f) | (m41t81_read(M41T81REG_HR) & 0xc0);
 m41t81_write(M41T81REG_HR, tm.tm_hour);


 if (tm.tm_wday == 0) tm.tm_wday = 7;
 tm.tm_wday = bin2bcd(tm.tm_wday);
 m41t81_write(M41T81REG_DY, tm.tm_wday);

 tm.tm_mday = bin2bcd(tm.tm_mday);
 m41t81_write(M41T81REG_DT, tm.tm_mday);


 tm.tm_mon ++;
 tm.tm_mon = bin2bcd(tm.tm_mon);
 m41t81_write(M41T81REG_MO, tm.tm_mon);


 tm.tm_year %= 100;
 tm.tm_year = bin2bcd(tm.tm_year);
 m41t81_write(M41T81REG_YR, tm.tm_year);
 spin_unlock_irqrestore(&rtc_lock, flags);

 return 0;
}
