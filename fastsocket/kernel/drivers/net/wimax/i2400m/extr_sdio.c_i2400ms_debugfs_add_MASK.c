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
struct TYPE_3__ {struct dentry* debugfs_dentry; } ;
struct TYPE_4__ {TYPE_1__ wimax_dev; } ;
struct i2400ms {struct dentry* debugfs_dentry; TYPE_2__ i2400m; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC3 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  fw ; 
 int /*<<< orphan*/  main ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tx ; 

__attribute__((used)) static
int FUNC5(struct i2400ms *i2400ms)
{
	int result;
	struct dentry *dentry = i2400ms->i2400m.wimax_dev.debugfs_dentry;

	dentry = FUNC3("i2400m-usb", dentry);
	result = FUNC1(dentry);
	if (FUNC0(dentry)) {
		if (result == -ENODEV)
			result = 0;	/* No debugfs support */
		goto error;
	}
	i2400ms->debugfs_dentry = dentry;
	FUNC2("dl_", main, dentry);
	FUNC2("dl_", tx, dentry);
	FUNC2("dl_", rx, dentry);
	FUNC2("dl_", fw, dentry);

	return 0;

error:
	FUNC4(i2400ms->debugfs_dentry);
	return result;
}