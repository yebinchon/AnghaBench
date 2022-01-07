
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;


 int BF (int,int ) ;
 scalar_t__ HW_RTC_STAT ;
 int RTC_STAT_STALE_REGS ;
 int __raw_readl (scalar_t__) ;
 int cpu_relax () ;

__attribute__((used)) static void stmp3xxx_wait_time(struct stmp3xxx_rtc_data *rtc_data)
{





 while (__raw_readl(rtc_data->io + HW_RTC_STAT) &
   BF(0x80, RTC_STAT_STALE_REGS))
  cpu_relax();
}
