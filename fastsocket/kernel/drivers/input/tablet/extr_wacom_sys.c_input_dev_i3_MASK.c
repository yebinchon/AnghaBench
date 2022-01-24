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
 int /*<<< orphan*/  ABS_RY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_MISC ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
	input_dev->keybit[FUNC1(BTN_MISC)] |= FUNC0(BTN_4) |
		FUNC0(BTN_5) | FUNC0(BTN_6) | FUNC0(BTN_7);
	FUNC2(input_dev, ABS_RY, 0, 4096, 0, 0);
}