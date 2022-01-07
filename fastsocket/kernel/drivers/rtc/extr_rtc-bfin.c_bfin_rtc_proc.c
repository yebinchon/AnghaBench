
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct seq_file {int dummy; } ;
struct device {int dummy; } ;


 int RTC_ISTAT_ALARM ;
 int RTC_ISTAT_ALARM_DAY ;
 int RTC_ISTAT_SEC ;
 int bfin_read_RTC_ICTL () ;
 int dev_dbg_stamp (struct device*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 int yesno (int) ;

__attribute__((used)) static int bfin_rtc_proc(struct device *dev, struct seq_file *seq)
{

 u16 ictl = bfin_read_RTC_ICTL();
 dev_dbg_stamp(dev);
 seq_printf(seq,
  "alarm_IRQ\t: %s\n"
  "wkalarm_IRQ\t: %s\n"
  "seconds_IRQ\t: %s\n",
  ((ictl & RTC_ISTAT_ALARM) ? "yes" : "no"),
  ((ictl & RTC_ISTAT_ALARM_DAY) ? "yes" : "no"),
  ((ictl & RTC_ISTAT_SEC) ? "yes" : "no"));
 return 0;

}
