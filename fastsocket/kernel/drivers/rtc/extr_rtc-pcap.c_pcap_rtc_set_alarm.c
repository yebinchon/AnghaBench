
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct platform_device {int dummy; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int PCAP_REG_RTC_DAYA ;
 int PCAP_REG_RTC_TODA ;
 unsigned long SEC_PER_DAY ;
 int ezx_pcap_write (int ,int ,unsigned long) ;
 struct pcap_rtc* platform_get_drvdata (struct platform_device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int pcap_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct pcap_rtc *pcap_rtc = platform_get_drvdata(pdev);
 struct rtc_time *tm = &alrm->time;
 unsigned long secs;
 u32 tod, days;

 rtc_tm_to_time(tm, &secs);

 tod = secs % SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_TODA, tod);

 days = secs / SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_DAYA, days);

 return 0;
}
