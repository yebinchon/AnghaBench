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
struct TYPE_5__ {int /*<<< orphan*/  data; int /*<<< orphan*/  cmd; int /*<<< orphan*/  netfn; } ;
struct TYPE_4__ {scalar_t__* data; int /*<<< orphan*/  channel; int /*<<< orphan*/  addr_type; } ;
struct ibmpex_bmc_data {int interface; int /*<<< orphan*/  user; int /*<<< orphan*/  hwmon_dev; struct device* bmc_device; int /*<<< orphan*/  list; int /*<<< orphan*/  tx_msg_data; TYPE_2__ tx_message; int /*<<< orphan*/  read_complete; scalar_t__ tx_msgid; int /*<<< orphan*/  lock; TYPE_1__ address; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bmc_data; int /*<<< orphan*/  ipmi_hndlrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPMI_BMC_CHANNEL ; 
 int /*<<< orphan*/  IPMI_SYSTEM_INTERFACE_ADDR_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PEX_COMMAND ; 
 int /*<<< orphan*/  PEX_NET_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct ibmpex_bmc_data*) ; 
 TYPE_3__ driver_data ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ibmpex_bmc_data*) ; 
 int FUNC6 (struct ibmpex_bmc_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,struct ibmpex_bmc_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmpex_bmc_data*) ; 
 struct ibmpex_bmc_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(int iface, struct device *dev)
{
	struct ibmpex_bmc_data *data;
	int err;

	data = FUNC11(sizeof(*data), GFP_KERNEL);
	if (!data) {
		FUNC1(dev, "Insufficient memory for BMC interface.\n");
		return;
	}

	data->address.addr_type = IPMI_SYSTEM_INTERFACE_ADDR_TYPE;
	data->address.channel = IPMI_BMC_CHANNEL;
	data->address.data[0] = 0;
	data->interface = iface;
	data->bmc_device = dev;

	/* Create IPMI messaging interface user */
	err = FUNC8(data->interface, &driver_data.ipmi_hndlrs,
			       data, &data->user);
	if (err < 0) {
		FUNC1(dev, "Unable to register user with IPMI "
			"interface %d\n", data->interface);
		goto out;
	}

	FUNC13(&data->lock);

	/* Initialize message */
	data->tx_msgid = 0;
	FUNC7(&data->read_complete);
	data->tx_message.netfn = PEX_NET_FUNCTION;
	data->tx_message.cmd = PEX_COMMAND;
	data->tx_message.data = data->tx_msg_data;

	/* Does this BMC support PowerExecutive? */
	err = FUNC6(data);
	if (err)
		goto out_user;

	/* Register the BMC as a HWMON class device */
	data->hwmon_dev = FUNC3(data->bmc_device);

	if (FUNC0(data->hwmon_dev)) {
		FUNC1(data->bmc_device, "Unable to register hwmon "
			"device for IPMI interface %d\n",
			data->interface);
		goto out_user;
	}

	/* finally add the new bmc data to the bmc data list */
	FUNC2(dev, data);
	FUNC12(&data->list, &driver_data.bmc_data);

	/* Now go find all the sensors */
	err = FUNC5(data);
	if (err) {
		FUNC1(data->bmc_device, "Error %d finding sensors\n", err);
		goto out_register;
	}

	return;

out_register:
	FUNC4(data->hwmon_dev);
out_user:
	FUNC9(data->user);
out:
	FUNC10(data);
}