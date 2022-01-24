#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long u32 ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct platform_device {int dummy; } ;
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_REG_RTC_DAYA ; 
 int /*<<< orphan*/  PCAP_REG_RTC_TODA ; 
 unsigned long SEC_PER_DAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct pcap_rtc* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_time*,unsigned long*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct platform_device *pdev = FUNC3(dev);
	struct pcap_rtc *pcap_rtc = FUNC1(pdev);
	struct rtc_time *tm = &alrm->time;
	unsigned long secs;
	u32 tod, days;

	FUNC2(tm, &secs);

	tod = secs % SEC_PER_DAY;
	FUNC0(pcap_rtc->pcap, PCAP_REG_RTC_TODA, tod);

	days = secs / SEC_PER_DAY;
	FUNC0(pcap_rtc->pcap, PCAP_REG_RTC_DAYA, days);

	return 0;
}