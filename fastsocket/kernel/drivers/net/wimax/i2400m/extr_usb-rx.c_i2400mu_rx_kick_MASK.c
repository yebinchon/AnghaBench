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
struct i2400m {int dummy; } ;
struct i2400mu {int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  rx_pending_count; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct i2400mu *i2400mu)
{
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct device *dev = &i2400mu->usb_iface->dev;

	FUNC2(3, dev, "(i2400mu %p)\n", i2400m);
	FUNC0(&i2400mu->rx_pending_count);
	FUNC3(&i2400mu->rx_wq);
	FUNC1(3, dev, "(i2400m %p) = void\n", i2400m);
}