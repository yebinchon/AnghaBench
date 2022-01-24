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
struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct i2400mu {int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  debugfs_dentry; struct i2400m i2400m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct usb_interface*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct usb_interface*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 struct i2400mu* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC8(struct usb_interface *iface)
{
	struct i2400mu *i2400mu = FUNC5(iface);
	struct i2400m *i2400m = &i2400mu->i2400m;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	struct device *dev = &iface->dev;

	FUNC1(3, dev, "(iface %p i2400m %p)\n", iface, i2400m);

	FUNC2(i2400mu->debugfs_dentry);
	FUNC4(i2400m);
	FUNC7(iface, NULL);
	FUNC6(i2400mu->usb_dev);
	FUNC3(net_dev);
	FUNC0(3, dev, "(iface %p i2400m %p) = void\n", iface, i2400m);
}