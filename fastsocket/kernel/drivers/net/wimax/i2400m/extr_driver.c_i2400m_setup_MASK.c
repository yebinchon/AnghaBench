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
struct wimax_dev {struct net_device* net_dev; int /*<<< orphan*/  op_reset; int /*<<< orphan*/  op_rfkill_sw_toggle; int /*<<< orphan*/  op_msg_from_user; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_2__ dev; } ;
struct i2400m {int /*<<< orphan*/ * bm_cmd_buf; int /*<<< orphan*/ * bm_ack_buf; struct wimax_dev wimax_dev; int /*<<< orphan*/  src_mac_addr; } ;
struct device {TYPE_1__* bus; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2400M_BM_ACK_BUF_SIZE ; 
 int /*<<< orphan*/  I2400M_BM_CMD_BUF_SIZE ; 
 int /*<<< orphan*/  WIMAX_ST_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 char* FUNC3 (struct device*) ; 
 int FUNC4 (struct i2400m*,int) ; 
 int FUNC5 (struct i2400m*) ; 
 struct device* FUNC6 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_dev_attr_group ; 
 int FUNC7 (struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*) ; 
 int /*<<< orphan*/  i2400m_op_msg_from_user ; 
 int /*<<< orphan*/  i2400m_op_reset ; 
 int /*<<< orphan*/  i2400m_op_rfkill_sw_toggle ; 
 int FUNC9 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int FUNC19 (struct wimax_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct wimax_dev*,int /*<<< orphan*/ ) ; 

int FUNC22(struct i2400m *i2400m, enum i2400m_bri bm_flags)
{
	int result = -ENODEV;
	struct device *dev = FUNC6(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;

	FUNC1(3, dev, "(i2400m %p)\n", i2400m);

	FUNC15(wimax_dev->name, sizeof(wimax_dev->name),
		 "i2400m-%s:%s", dev->bus->name, FUNC3(dev));

	i2400m->bm_cmd_buf = FUNC11(I2400M_BM_CMD_BUF_SIZE, GFP_KERNEL);
	if (i2400m->bm_cmd_buf == NULL) {
		FUNC2(dev, "cannot allocate USB command buffer\n");
		goto error_bm_cmd_kzalloc;
	}
	i2400m->bm_ack_buf = FUNC11(I2400M_BM_ACK_BUF_SIZE, GFP_KERNEL);
	if (i2400m->bm_ack_buf == NULL) {
		FUNC2(dev, "cannot allocate USB ack buffer\n");
		goto error_bm_ack_buf_kzalloc;
	}
	result = FUNC4(i2400m, bm_flags);
	if (result < 0) {
		FUNC2(dev, "read mac addr: bootrom init "
			"failed: %d\n", result);
		goto error_bootrom_init;
	}
	result = FUNC9(i2400m);
	if (result < 0)
		goto error_read_mac_addr;
	FUNC13(i2400m->src_mac_addr);

	result = FUNC14(net_dev);	/* Okey dokey, bring it up */
	if (result < 0) {
		FUNC2(dev, "cannot register i2400m network device: %d\n",
			result);
		goto error_register_netdev;
	}
	FUNC12(net_dev);

	result = FUNC7(i2400m, bm_flags);
	if (result < 0)
		goto error_dev_start;

	i2400m->wimax_dev.op_msg_from_user = i2400m_op_msg_from_user;
	i2400m->wimax_dev.op_rfkill_sw_toggle = i2400m_op_rfkill_sw_toggle;
	i2400m->wimax_dev.op_reset = i2400m_op_reset;
	result = FUNC19(&i2400m->wimax_dev, net_dev);
	if (result < 0)
		goto error_wimax_dev_add;
	/* User space needs to do some init stuff */
	FUNC21(wimax_dev, WIMAX_ST_UNINITIALIZED);

	/* Now setup all that requires a registered net and wimax device. */
	result = FUNC16(&net_dev->dev.kobj, &i2400m_dev_attr_group);
	if (result < 0) {
		FUNC2(dev, "cannot setup i2400m's sysfs: %d\n", result);
		goto error_sysfs_setup;
	}
	result = FUNC5(i2400m);
	if (result < 0) {
		FUNC2(dev, "cannot setup i2400m's debugfs: %d\n", result);
		goto error_debugfs_setup;
	}
	FUNC0(3, dev, "(i2400m %p) = %d\n", i2400m, result);
	return result;

error_debugfs_setup:
	FUNC17(&i2400m->wimax_dev.net_dev->dev.kobj,
			   &i2400m_dev_attr_group);
error_sysfs_setup:
	FUNC20(&i2400m->wimax_dev);
error_wimax_dev_add:
	FUNC8(i2400m);
error_dev_start:
	FUNC18(net_dev);
error_register_netdev:
error_read_mac_addr:
error_bootrom_init:
	FUNC10(i2400m->bm_ack_buf);
error_bm_ack_buf_kzalloc:
	FUNC10(i2400m->bm_cmd_buf);
error_bm_cmd_kzalloc:
	FUNC0(3, dev, "(i2400m %p) = %d\n", i2400m, result);
	return result;
}