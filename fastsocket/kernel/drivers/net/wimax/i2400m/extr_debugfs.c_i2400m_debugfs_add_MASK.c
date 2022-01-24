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
struct TYPE_2__ {struct dentry* debugfs_dentry; } ;
struct i2400m {int /*<<< orphan*/  trace_msg_from_user; int /*<<< orphan*/  state; int /*<<< orphan*/  tx_out; int /*<<< orphan*/  tx_in; struct dentry* debugfs_dentry; TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  debugfs ; 
 struct dentry* FUNC3 (char*,struct dentry*) ; 
 struct dentry* FUNC4 (char*,int,struct dentry*,struct i2400m*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (char*,struct dentry*,struct i2400m*) ; 
 struct dentry* FUNC6 (char*,struct dentry*,struct i2400m*) ; 
 struct dentry* FUNC7 (char*,struct dentry*,struct i2400m*) ; 
 struct dentry* FUNC8 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC9 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC10 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*,int) ; 
 int /*<<< orphan*/  driver ; 
 int /*<<< orphan*/  fw ; 
 struct device* FUNC12 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_rx_stats_fops ; 
 int /*<<< orphan*/  i2400m_tx_stats_fops ; 
 int /*<<< orphan*/  netdev ; 
 int /*<<< orphan*/  rfkill ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tx ; 

int FUNC13(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC12(i2400m);
	struct dentry *dentry = i2400m->wimax_dev.debugfs_dentry;
	struct dentry *fd;

	dentry = FUNC3("i2400m", dentry);
	result = FUNC1(dentry);
	if (FUNC0(dentry)) {
		if (result == -ENODEV)
			result = 0;	/* No debugfs support */
		goto error;
	}
	i2400m->debugfs_dentry = dentry;
	FUNC2("dl_", control, dentry);
	FUNC2("dl_", driver, dentry);
	FUNC2("dl_", debugfs, dentry);
	FUNC2("dl_", fw, dentry);
	FUNC2("dl_", netdev, dentry);
	FUNC2("dl_", rfkill, dentry);
	FUNC2("dl_", rx, dentry);
	FUNC2("dl_", tx, dentry);

	fd = FUNC8("tx_in", 0400, dentry,
				   &i2400m->tx_in);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"tx_in: %d\n", result);
		goto error;
	}

	fd = FUNC8("tx_out", 0400, dentry,
				   &i2400m->tx_out);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"tx_out: %d\n", result);
		goto error;
	}

	fd = FUNC9("state", 0600, dentry,
				&i2400m->state);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"state: %d\n", result);
		goto error;
	}

	/*
	 * Trace received messages from user space
	 *
	 * In order to tap the bidirectional message stream in the
	 * 'msg' pipe, user space can read from the 'msg' pipe;
	 * however, due to limitations in libnl, we can't know what
	 * the different applications are sending down to the kernel.
	 *
	 * So we have this hack where the driver will echo any message
	 * received on the msg pipe from user space [through a call to
	 * wimax_dev->op_msg_from_user() into
	 * i2400m_op_msg_from_user()] into the 'trace' pipe that this
	 * driver creates.
	 *
	 * So then, reading from both the 'trace' and 'msg' pipes in
	 * user space will provide a full dump of the traffic.
	 *
	 * Write 1 to activate, 0 to clear.
	 *
	 * It is not really very atomic, but it is also not too
	 * critical.
	 */
	fd = FUNC10("trace_msg_from_user", 0600, dentry,
			       &i2400m->trace_msg_from_user);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"trace_msg_from_user: %d\n", result);
		goto error;
	}

	fd = FUNC7("netdev_queue_stopped",
						 dentry, i2400m);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"netdev_queue_stopped: %d\n", result);
		goto error;
	}

	fd = FUNC4("rx_stats", 0600, dentry, i2400m,
				 &i2400m_rx_stats_fops);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"rx_stats: %d\n", result);
		goto error;
	}

	fd = FUNC4("tx_stats", 0600, dentry, i2400m,
				 &i2400m_tx_stats_fops);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry "
			"tx_stats: %d\n", result);
		goto error;
	}

	fd = FUNC6("suspend", dentry, i2400m);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry suspend: %d\n",
			result);
		goto error;
	}

	fd = FUNC5("reset", dentry, i2400m);
	result = FUNC1(fd);
	if (FUNC0(fd) && result != -ENODEV) {
		FUNC11(dev, "Can't create debugfs entry reset: %d\n", result);
		goto error;
	}

	result = 0;
error:
	return result;
}