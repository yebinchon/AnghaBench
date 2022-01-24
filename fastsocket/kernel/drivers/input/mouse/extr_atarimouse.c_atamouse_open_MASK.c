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
 int /*<<< orphan*/  atamouse_interrupt ; 
 int /*<<< orphan*/  atari_input_mouse_interrupt_hook ; 
 scalar_t__ atari_mouse_buttons ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * mouse_threshold ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
#ifdef FIXED_ATARI_JOYSTICK
	atari_mouse_buttons = 0;
#endif
	FUNC2();
	FUNC1(mouse_threshold[0], mouse_threshold[1]);
	FUNC0();
	atari_input_mouse_interrupt_hook = atamouse_interrupt;

	return 0;
}