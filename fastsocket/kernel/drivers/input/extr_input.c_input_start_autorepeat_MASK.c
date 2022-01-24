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
struct TYPE_2__ {scalar_t__ data; } ;
struct input_dev {int repeat_key; scalar_t__* rep; TYPE_1__ timer; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_REP ; 
 size_t REP_DELAY ; 
 size_t REP_PERIOD ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev, int code)
{
	if (FUNC2(EV_REP, dev->evbit) &&
	    dev->rep[REP_PERIOD] && dev->rep[REP_DELAY] &&
	    dev->timer.data) {
		dev->repeat_key = code;
		FUNC0(&dev->timer,
			  jiffies + FUNC1(dev->rep[REP_DELAY]));
	}
}