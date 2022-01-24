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
struct input_polled_dev {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_polled_dev*) ; 
 struct input_polled_dev* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct input_polled_dev *FUNC3(void)
{
	struct input_polled_dev *dev;

	dev = FUNC2(sizeof(struct input_polled_dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	dev->input = FUNC0();
	if (!dev->input) {
		FUNC1(dev);
		return NULL;
	}

	return dev;
}