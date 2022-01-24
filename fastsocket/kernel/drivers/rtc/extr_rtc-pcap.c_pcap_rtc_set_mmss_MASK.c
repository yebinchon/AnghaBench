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
struct platform_device {int dummy; } ;
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_REG_RTC_DAY ; 
 int /*<<< orphan*/  PCAP_REG_RTC_TOD ; 
 unsigned long SEC_PER_DAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct pcap_rtc* FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned long secs)
{
	struct platform_device *pdev = FUNC2(dev);
	struct pcap_rtc *pcap_rtc = FUNC1(pdev);
	u32 tod, days;

	tod = secs % SEC_PER_DAY;
	FUNC0(pcap_rtc->pcap, PCAP_REG_RTC_TOD, tod);

	days = secs / SEC_PER_DAY;
	FUNC0(pcap_rtc->pcap, PCAP_REG_RTC_DAY, days);

	return 0;
}