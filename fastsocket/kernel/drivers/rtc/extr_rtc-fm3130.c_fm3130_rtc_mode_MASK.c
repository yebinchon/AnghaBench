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
struct fm3130 {int* regs; int alarm; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  FM3130_MODE_NORMAL 130 
#define  FM3130_MODE_READ 129 
#define  FM3130_MODE_WRITE 128 
 size_t FM3130_RTC_CONTROL ; 
 int FM3130_RTC_CONTROL_BIT_AF ; 
 int FM3130_RTC_CONTROL_BIT_READ ; 
 int FM3130_RTC_CONTROL_BIT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct fm3130* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void FUNC4(struct device *dev, int mode)
{
	struct fm3130 *fm3130 = FUNC1(dev);

	fm3130->regs[FM3130_RTC_CONTROL] =
		FUNC2(fm3130->client, FM3130_RTC_CONTROL);
	switch (mode) {
	case FM3130_MODE_NORMAL:
		fm3130->regs[FM3130_RTC_CONTROL] &=
			~(FM3130_RTC_CONTROL_BIT_WRITE |
			FM3130_RTC_CONTROL_BIT_READ);
		break;
	case FM3130_MODE_WRITE:
		fm3130->regs[FM3130_RTC_CONTROL] |= FM3130_RTC_CONTROL_BIT_WRITE;
		break;
	case FM3130_MODE_READ:
		fm3130->regs[FM3130_RTC_CONTROL] |= FM3130_RTC_CONTROL_BIT_READ;
		break;
	default:
		FUNC0(dev, "invalid mode %d\n", mode);
		break;
	}
	/* Checking for alarm */
	if (fm3130->regs[FM3130_RTC_CONTROL] & FM3130_RTC_CONTROL_BIT_AF) {
		fm3130->alarm = 1;
		fm3130->regs[FM3130_RTC_CONTROL] &= ~FM3130_RTC_CONTROL_BIT_AF;
	}
	FUNC3(fm3130->client,
		 FM3130_RTC_CONTROL, fm3130->regs[FM3130_RTC_CONTROL]);
}