#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct dentry* debugfs_dentry; } ;
struct TYPE_6__ {TYPE_2__ wimax_dev; } ;
struct i2400mu {struct dentry* debugfs_dentry; int /*<<< orphan*/  rx_size; int /*<<< orphan*/  rx_size_auto_shrink; TYPE_3__ i2400m; TYPE_1__* usb_iface; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC3 (char*,struct dentry*) ; 
 struct dentry* FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 int /*<<< orphan*/  fw ; 
 int /*<<< orphan*/  notif ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tx ; 
 int /*<<< orphan*/  usb ; 

__attribute__((used)) static
int FUNC8(struct i2400mu *i2400mu)
{
	int result;
	struct device *dev = &i2400mu->usb_iface->dev;
	struct dentry *dentry = i2400mu->i2400m.wimax_dev.debugfs_dentry;
	struct dentry *fd;

	dentry = FUNC3("i2400m-usb", dentry);
	result = FUNC1(dentry);
	if (FUNC0(dentry)) {
		if (result == -ENODEV)
			result = 0;	/* No debugfs support */
		goto error;
	}
	i2400mu->debugfs_dentry = dentry;
	FUNC2("dl_", usb, dentry);
	FUNC2("dl_", fw, dentry);
	FUNC2("dl_", notif, dentry);
	FUNC2("dl_", rx, dentry);
	FUNC2("dl_", tx, dentry);

	/* Don't touch these if you don't know what you are doing */
	fd = FUNC5("rx_size_auto_shrink", 0600, dentry,
			       &i2400mu->rx_size_auto_shrink);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC7(dev, "Can't create debugfs entry "
			"rx_size_auto_shrink: %d\n", result);
		goto error;
	}

	fd = FUNC4("rx_size", 0600, dentry,
				   &i2400mu->rx_size);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC7(dev, "Can't create debugfs entry "
			"rx_size: %d\n", result);
		goto error;
	}

	return 0;

error:
	FUNC6(i2400mu->debugfs_dentry);
	return result;
}