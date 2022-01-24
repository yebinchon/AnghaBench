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
struct input_dev {int* evbit; int* relbit; int* keybit; } ;
struct TYPE_2__ {int /*<<< orphan*/  distance_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_DIGI ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_MOUSE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_MOUSE ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->evbit[0] |= FUNC0(EV_REL);
	input_dev->relbit[0] |= FUNC0(REL_WHEEL);
	input_dev->keybit[FUNC1(BTN_MOUSE)] |= FUNC0(BTN_LEFT) |
		FUNC0(BTN_RIGHT) | FUNC0(BTN_MIDDLE);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOOL_RUBBER) |
		FUNC0(BTN_TOOL_PEN) | FUNC0(BTN_STYLUS) |
		FUNC0(BTN_TOOL_MOUSE) | FUNC0(BTN_STYLUS2);
	FUNC2(input_dev, ABS_DISTANCE, 0, wacom_wac->features->distance_max, 0, 0);
}