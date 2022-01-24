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
typedef  unsigned int u8 ;
struct input_polled_dev {struct input_dev* input; struct buttons_dev* private; } ;
struct input_dev {int dummy; } ;
struct buttons_dev {scalar_t__* count; int /*<<< orphan*/ * keymap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BUTTONS_COUNT_THRESHOLD ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 

__attribute__((used)) static void FUNC5(struct input_polled_dev *dev)
{
	struct buttons_dev *bdev = dev->private;
	struct input_dev *input = dev->input;
	u8 status;
	int i;

	status = FUNC1();

	for (i = 0; i < FUNC0(bdev->keymap); i++) {
		if (status & (1U << i)) {
			if (++bdev->count[i] == BUTTONS_COUNT_THRESHOLD) {
				FUNC2(input, EV_MSC, MSC_SCAN, i);
				FUNC3(input, bdev->keymap[i], 1);
				FUNC4(input);
			}
		} else {
			if (bdev->count[i] >= BUTTONS_COUNT_THRESHOLD) {
				FUNC2(input, EV_MSC, MSC_SCAN, i);
				FUNC3(input, bdev->keymap[i], 0);
				FUNC4(input);
			}
			bdev->count[i] = 0;
		}
	}
}