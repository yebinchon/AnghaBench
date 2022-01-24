#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long config; } ;

/* Variables and functions */
 unsigned long MFP_LPM_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int FUNC1 (int) ; 
 TYPE_1__* gpio_desc ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

void FUNC4(int mfp, unsigned long lpm)
{
	unsigned long flags, c;
	int gpio;

	gpio = FUNC1(mfp);
	if (gpio < 0)
		return;

	FUNC3(flags);

	c = gpio_desc[gpio].config;
	c = (c & ~MFP_LPM_STATE_MASK) | lpm;
	FUNC0(gpio, c);

	FUNC2(flags);
}