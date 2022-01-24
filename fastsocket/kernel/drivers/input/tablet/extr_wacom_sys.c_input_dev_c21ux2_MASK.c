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
struct wacom_wac {int dummy; } ;
struct input_dev {int* keybit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_BASE ; 
 int /*<<< orphan*/  BTN_BASE2 ; 
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_GAMEPAD ; 
 int /*<<< orphan*/  BTN_JOYSTICK ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BTN_Z ; 

void FUNC2(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->keybit[FUNC1(BTN_GAMEPAD)] |= FUNC0(BTN_A) | FUNC0(BTN_B) | FUNC0(BTN_C);
	input_dev->keybit[FUNC1(BTN_GAMEPAD)] |= FUNC0(BTN_X) | FUNC0(BTN_Y) | FUNC0(BTN_Z);
	input_dev->keybit[FUNC1(BTN_JOYSTICK)] |= FUNC0(BTN_BASE) | FUNC0(BTN_BASE2);
}