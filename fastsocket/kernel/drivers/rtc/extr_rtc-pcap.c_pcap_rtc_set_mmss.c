
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct platform_device {int dummy; } ;
struct pcap_rtc {int pcap; } ;
struct device {int dummy; } ;


 int PCAP_REG_RTC_DAY ;
 int PCAP_REG_RTC_TOD ;
 unsigned long SEC_PER_DAY ;
 int ezx_pcap_write (int ,int ,unsigned long) ;
 struct pcap_rtc* platform_get_drvdata (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int pcap_rtc_set_mmss(struct device *dev, unsigned long secs)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct pcap_rtc *pcap_rtc = platform_get_drvdata(pdev);
 u32 tod, days;

 tod = secs % SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_TOD, tod);

 days = secs / SEC_PER_DAY;
 ezx_pcap_write(pcap_rtc->pcap, PCAP_REG_RTC_DAY, days);

 return 0;
}
