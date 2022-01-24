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
struct input_dev {int dummy; } ;

/* Variables and functions */
 unsigned int EV_SND ; 
 int FREQ ; 
#define  SND_BELL 129 
#define  SND_TONE 128 
 scalar_t__ FUNC0 (struct input_dev*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
	unsigned int pin = (unsigned int) FUNC0(dev);
	unsigned int count = 0;

	if (type != EV_SND)
		return -1;

	switch (code) {
		case SND_BELL:
			if (value)
				value = 1000;
		case SND_TONE:
			break;
		default:
			return -1;
	}

	if (value > 20 && value < 32767)
#ifndef FREQ
		count = (FUNC1() / (value * 4)) - 1;
#else
		count = (FREQ / (value * 4)) - 1;
#endif

	FUNC2(pin, count);

	return 0;
}