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
typedef  int u32 ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int AT91_RTT_ALMIEN ; 
 int AT91_RTT_RTTINCIEN ; 
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  MR ; 
#define  RTC_AIE_OFF 131 
#define  RTC_AIE_ON 130 
#define  RTC_UIE_OFF 129 
#define  RTC_UIE_ON 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,unsigned long,int) ; 
 struct sam9_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sam9_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int cmd,
			unsigned long arg)
{
	struct sam9_rtc *rtc = FUNC1(dev);
	int ret = 0;
	u32 mr = FUNC2(rtc, MR);

	FUNC0(dev, "ioctl: cmd=%08x, arg=%08lx, mr %08x\n", cmd, arg, mr);

	switch (cmd) {
	case RTC_AIE_OFF:		/* alarm off */
		FUNC3(rtc, MR, mr & ~AT91_RTT_ALMIEN);
		break;
	case RTC_AIE_ON:		/* alarm on */
		FUNC3(rtc, MR, mr | AT91_RTT_ALMIEN);
		break;
	case RTC_UIE_OFF:		/* update off */
		FUNC3(rtc, MR, mr & ~AT91_RTT_RTTINCIEN);
		break;
	case RTC_UIE_ON:		/* update on */
		FUNC3(rtc, MR, mr | AT91_RTT_RTTINCIEN);
		break;
	default:
		ret = -ENOIOCTLCMD;
		break;
	}

	return ret;
}