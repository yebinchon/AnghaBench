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
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct i2400m {scalar_t__ updown; } ;
struct i2400mu {struct i2400m i2400m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct usb_interface*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2400mu*) ; 
 struct i2400mu* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static
int FUNC5(struct usb_interface *iface)
{
	int ret = 0;
	struct device *dev = &iface->dev;
	struct i2400mu *i2400mu = FUNC4(iface);
	struct i2400m *i2400m = &i2400mu->i2400m;

	FUNC1(3, dev, "(iface %p)\n", iface);
	if (i2400m->updown == 0) {
		FUNC2(1, dev, "fw was down, no resume neeed\n");
		goto out;
	}
	FUNC2(1, dev, "fw was up, resuming\n");
	FUNC3(i2400mu);
	/* USB has flow control, so we don't need to give it time to
	 * come back; otherwise, we'd use something like a get-state
	 * command... */
out:
	FUNC0(3, dev, "(iface %p) = %d\n", iface, ret);
	return ret;
}