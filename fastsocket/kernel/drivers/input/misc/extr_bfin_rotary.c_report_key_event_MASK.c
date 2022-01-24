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
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input, int keycode)
{
	/* simulate a press-n-release */
	FUNC0(input, keycode, 1);
	FUNC1(input);
	FUNC0(input, keycode, 0);
	FUNC1(input);
}