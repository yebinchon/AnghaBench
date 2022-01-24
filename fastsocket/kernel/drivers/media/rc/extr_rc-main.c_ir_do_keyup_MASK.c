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
struct rc_dev {int keypressed; int /*<<< orphan*/  input_dev; int /*<<< orphan*/  last_keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rc_dev *dev)
{
	if (!dev->keypressed)
		return;

	FUNC0(1, "keyup key 0x%04x\n", dev->last_keycode);
	FUNC1(dev->input_dev, dev->last_keycode, 0);
	FUNC2(dev->input_dev);
	dev->keypressed = false;
}