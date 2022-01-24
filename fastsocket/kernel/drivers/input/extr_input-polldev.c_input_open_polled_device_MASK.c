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
struct input_polled_dev {int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  work; int /*<<< orphan*/  (* flush ) (struct input_polled_dev*) ;} ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct input_polled_dev* FUNC0 (struct input_dev*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  polldev_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_polled_dev*) ; 

__attribute__((used)) static int FUNC5(struct input_dev *input)
{
	struct input_polled_dev *dev = FUNC0(input);
	int error;

	error = FUNC1();
	if (error)
		return error;

	if (dev->flush)
		dev->flush(dev);

	FUNC3(polldev_wq, &dev->work,
			   FUNC2(dev->poll_interval));

	return 0;
}