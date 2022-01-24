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
struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int* keybit; int /*<<< orphan*/ * absbit; } ;
struct TYPE_2__ {int /*<<< orphan*/  distance_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MISC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_DIGI ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->absbit[FUNC1(ABS_MISC)] &= ~ABS_MISC;
	/* for now, BAMBOO_PT will only handle pen */
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOOL_RUBBER) |
		FUNC0(BTN_STYLUS2);
	FUNC2(input_dev, ABS_DISTANCE, 0,
			     wacom_wac->features->distance_max, 0, 0);
}