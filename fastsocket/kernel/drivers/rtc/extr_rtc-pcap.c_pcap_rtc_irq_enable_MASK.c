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
struct platform_device {int dummy; } ;
struct pcap_rtc {int /*<<< orphan*/  pcap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct pcap_rtc* FUNC3 (struct platform_device*) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int pirq, unsigned int en)
{
	struct platform_device *pdev = FUNC4(dev);
	struct pcap_rtc *pcap_rtc = FUNC3(pdev);

	if (en)
		FUNC1(FUNC2(pcap_rtc->pcap, pirq));
	else
		FUNC0(FUNC2(pcap_rtc->pcap, pirq));

	return 0;
}