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
struct mtouch {scalar_t__ idx; int /*<<< orphan*/  data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ MTOUCH_FORMAT_TABLET_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTOUCH_MAX_YC ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static void FUNC6(struct mtouch *mtouch)
{
	struct input_dev *dev = mtouch->dev;

	if (MTOUCH_FORMAT_TABLET_LENGTH == ++mtouch->idx) {
		FUNC3(dev, ABS_X, FUNC1(mtouch->data));
		FUNC3(dev, ABS_Y, MTOUCH_MAX_YC - FUNC2(mtouch->data));
		FUNC4(dev, BTN_TOUCH, FUNC0(mtouch->data));
		FUNC5(dev);

		mtouch->idx = 0;
	}
}