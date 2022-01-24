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
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
#define  RTC_AIE_OFF 129 
#define  RTC_AIE_ON 128 
 scalar_t__ RTC_MIS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct pl031_local* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int cmd, unsigned long arg)
{
	struct pl031_local *ldata = FUNC1(dev);

	switch (cmd) {
	case RTC_AIE_OFF:
		FUNC0(1, ldata->base + RTC_MIS);
		return 0;
	case RTC_AIE_ON:
		FUNC0(0, ldata->base + RTC_MIS);
		return 0;
	}

	return -ENOIOCTLCMD;
}