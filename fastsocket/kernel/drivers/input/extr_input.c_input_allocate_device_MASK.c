#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * type; } ;
struct input_dev {int /*<<< orphan*/  node; int /*<<< orphan*/  h_list; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  mutex; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  input_class ; 
 int /*<<< orphan*/  input_dev_type ; 
 struct input_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct input_dev *FUNC6(void)
{
	struct input_dev *dev;

	dev = FUNC3(sizeof(struct input_dev), GFP_KERNEL);
	if (dev) {
		dev->dev.type = &input_dev_type;
		dev->dev.class = &input_class;
		FUNC2(&dev->dev);
		FUNC4(&dev->mutex);
		FUNC5(&dev->event_lock);
		FUNC0(&dev->h_list);
		FUNC0(&dev->node);

		FUNC1(THIS_MODULE);
	}

	return dev;
}