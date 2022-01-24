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
struct input_dev {int* keybit; } ;
struct TYPE_2__ {int distance_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
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
 int /*<<< orphan*/  BTN_8 ; 
 int /*<<< orphan*/  BTN_9 ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_GAMEPAD ; 
 int /*<<< orphan*/  BTN_MISC ; 
 int /*<<< orphan*/  BTN_STYLUS ; 
 int /*<<< orphan*/  BTN_STYLUS2 ; 
 int /*<<< orphan*/  BTN_TOOL_AIRBRUSH ; 
 int /*<<< orphan*/  BTN_TOOL_BRUSH ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOOL_PENCIL ; 
 int /*<<< orphan*/  BTN_TOOL_RUBBER ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BTN_Z ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  KEY_PLAYCD ; 
 int /*<<< orphan*/  KEY_PROG1 ; 
 int /*<<< orphan*/  KEY_PROG2 ; 
 int /*<<< orphan*/  KEY_PROG3 ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->keybit[FUNC1(BTN_GAMEPAD)] |= FUNC0(BTN_A) | FUNC0(BTN_B) | FUNC0(BTN_C);
	input_dev->keybit[FUNC1(BTN_GAMEPAD)] |= FUNC0(BTN_X) | FUNC0(BTN_Y) | FUNC0(BTN_Z);
	input_dev->keybit[FUNC1(BTN_MISC)] |= FUNC0(BTN_0) | FUNC0(BTN_1) | FUNC0(BTN_2) |
						 FUNC0(BTN_3) | FUNC0(BTN_4) | FUNC0(BTN_5) |
						 FUNC0(BTN_6) | FUNC0(BTN_7) | FUNC0(BTN_8) |
						 FUNC0(BTN_9);
	input_dev->keybit[FUNC1(KEY_PROG1)] |= FUNC0(KEY_PROG1) | FUNC0(KEY_PROG2);
	input_dev->keybit[FUNC1(KEY_PLAYCD)] |= FUNC0(KEY_PROG3);

	FUNC2(input_dev, ABS_Z, -900, 899, 0, 0);
	FUNC2(input_dev, ABS_THROTTLE, 0, 71, 0, 0);
	FUNC3(input_dev, EV_MSC, MSC_SERIAL);

	input_dev->keybit[FUNC1(BTN_TOOL_RUBBER)] |= FUNC0(BTN_TOOL_RUBBER) | FUNC0(BTN_TOOL_PEN) |
						FUNC0(BTN_TOOL_BRUSH) | FUNC0(BTN_TOOL_PENCIL) |
						FUNC0(BTN_TOOL_AIRBRUSH) | FUNC0(BTN_STYLUS) |
						FUNC0(BTN_STYLUS2);

	FUNC2(input_dev, ABS_DISTANCE,
			     0, wacom_wac->features->distance_max, 0, 0);
	FUNC2(input_dev, ABS_WHEEL, 0, 1023, 0, 0);
	FUNC2(input_dev, ABS_TILT_X, 0, 127, 0, 0);
	FUNC2(input_dev, ABS_TILT_Y, 0, 127, 0, 0);
}