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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  agc_analog_digital_select_gpio; } ;
struct cx231xx {TYPE_1__ board; } ;

/* Variables and functions */
 int FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct cx231xx *dev,
					      u8 analog_or_digital)
{
	int status = 0;

	/* first set the direction to output */
	status = FUNC0(dev,
					    dev->board.
					    agc_analog_digital_select_gpio, 1);

	/* 0 - demod ; 1 - Analog mode */
	status = FUNC1(dev,
				   dev->board.agc_analog_digital_select_gpio,
				   analog_or_digital);

	return status;
}