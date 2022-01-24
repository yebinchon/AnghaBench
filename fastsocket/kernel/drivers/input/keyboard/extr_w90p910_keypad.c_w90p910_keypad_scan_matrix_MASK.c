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
struct w90p910_keypad {unsigned int* keymap; struct input_dev* input_dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  W90P910_ROW_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct w90p910_keypad *keypad,
							unsigned int status)
{
	struct input_dev *input_dev = keypad->input_dev;
	unsigned int row = FUNC1(status);
	unsigned int col = FUNC0(status);
	unsigned int code = FUNC2(row, col, W90P910_ROW_SHIFT);
	unsigned int key = keypad->keymap[code];

	FUNC3(input_dev, EV_MSC, MSC_SCAN, code);
	FUNC4(input_dev, key, 1);
	FUNC5(input_dev);

	FUNC3(input_dev, EV_MSC, MSC_SCAN, code);
	FUNC4(input_dev, key, 0);
	FUNC5(input_dev);
}