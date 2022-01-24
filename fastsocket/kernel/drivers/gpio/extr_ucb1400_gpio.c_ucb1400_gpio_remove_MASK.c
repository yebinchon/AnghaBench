#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ngpio; } ;
struct ucb1400_gpio {TYPE_2__ gc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int (* gpio_teardown ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 struct ucb1400_gpio* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* ucbdata ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	int err = 0;
	struct ucb1400_gpio *ucb = FUNC1(dev);

	if (ucbdata && ucbdata->gpio_teardown) {
		err = ucbdata->gpio_teardown(&dev->dev, ucb->gc.ngpio);
		if (err)
			return err;
	}

	err = FUNC0(&ucb->gc);
	return err;
}