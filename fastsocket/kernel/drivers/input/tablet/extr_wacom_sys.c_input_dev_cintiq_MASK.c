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
struct input_dev {int* keybit; int* evbit; int* mscbit; } ;
struct TYPE_2__ {int distance_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_TILT_X ; 
 int /*<<< orphan*/  ABS_TILT_Y ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_Z ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_DIGI ; 
 int /*<<< orphan*/  BTN_MISC ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_AIRBRUSH ; 
 int /*<<< orphan*/  BTN_TOOL_BRUSH ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_PENCIL ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->keybit[FUNC1(BTN_MISC)] |= FUNC0(BTN_0) | FUNC0(BTN_1) | FUNC0(BTN_2) | FUNC0(BTN_3);
	input_dev->keybit[FUNC1(BTN_MISC)] |= FUNC0(BTN_4) | FUNC0(BTN_5) | FUNC0(BTN_6) | FUNC0(BTN_7);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOOL_FINGER);

	FUNC2(input_dev, ABS_RX, 0, 4096, 0, 0);
	FUNC2(input_dev, ABS_RY, 0, 4096, 0, 0);
	FUNC2(input_dev, ABS_Z, -900, 899, 0, 0);

	input_dev->evbit[0] |= FUNC0(EV_MSC);
	input_dev->mscbit[0] |= FUNC0(MSC_SERIAL);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_TOOL_RUBBER) |
		FUNC0(BTN_TOOL_PEN) | FUNC0(BTN_TOOL_BRUSH) |
		FUNC0(BTN_TOOL_PENCIL) | FUNC0(BTN_TOOL_AIRBRUSH);
	input_dev->keybit[FUNC1(BTN_DIGI)] |= FUNC0(BTN_STYLUS) | FUNC0(BTN_STYLUS2);

	FUNC2(input_dev, ABS_DISTANCE, 0, wacom_wac->features->distance_max, 0, 0);
	FUNC2(input_dev, ABS_WHEEL, 0, 1023, 0, 0);
	FUNC2(input_dev, ABS_TILT_X, 0, 127, 0, 0);
	FUNC2(input_dev, ABS_TILT_Y, 0, 127, 0, 0);
}