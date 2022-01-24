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
struct bfin_rot {int /*<<< orphan*/  rel_code; int /*<<< orphan*/  down_key; int /*<<< orphan*/  up_key; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bfin_rot *rotary, int delta)
{
	struct input_dev *input = rotary->input;

	if (rotary->up_key) {
		FUNC2(input,
				 delta > 0 ? rotary->up_key : rotary->down_key);
	} else {
		FUNC0(input, rotary->rel_code, delta);
		FUNC1(input);
	}
}