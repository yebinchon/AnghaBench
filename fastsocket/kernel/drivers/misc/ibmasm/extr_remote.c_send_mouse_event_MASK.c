#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_4__ {TYPE_1__ mouse; } ;
struct remote_input {unsigned char mouse_buttons; TYPE_2__ data; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 unsigned char REMOTE_BUTTON_LEFT ; 
 unsigned char REMOTE_BUTTON_MIDDLE ; 
 unsigned char REMOTE_BUTTON_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev, struct remote_input *input)
{
	unsigned char buttons = input->mouse_buttons;

	FUNC0(dev, ABS_X, input->data.mouse.x);
	FUNC0(dev, ABS_Y, input->data.mouse.y);
	FUNC1(dev, BTN_LEFT, buttons & REMOTE_BUTTON_LEFT);
	FUNC1(dev, BTN_MIDDLE, buttons & REMOTE_BUTTON_MIDDLE);
	FUNC1(dev, BTN_RIGHT, buttons & REMOTE_BUTTON_RIGHT);
	FUNC2(dev);
}