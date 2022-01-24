#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_11__ {int udelay; TYPE_1__ dev; struct TYPE_11__* adapter; scalar_t__ name; struct TYPE_11__* algo_data; struct ivtv* data; } ;
struct TYPE_10__ {scalar_t__ newi2c; int i2c_clock_period; } ;
struct ivtv {int instance; TYPE_4__ i2c_adap; TYPE_3__ options; TYPE_2__* pdev; TYPE_4__ i2c_client; int /*<<< orphan*/  v4l2_dev; TYPE_4__ i2c_algo; } ;
struct i2c_client {int dummy; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  hw_addrs ; 
 int /*<<< orphan*/  hw_devicenames ; 
 int FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ivtv_i2c_adap_hw_template ; 
 int /*<<< orphan*/  ivtv_i2c_adap_template ; 
 int /*<<< orphan*/  ivtv_i2c_algo_template ; 
 int /*<<< orphan*/  ivtv_i2c_client_template ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

int FUNC11(struct ivtv *itv)
{
	int retval;

	FUNC1("i2c init\n");

	/* Sanity checks for the I2C hardware arrays. They must be the
	 * same size.
	 */
	if (FUNC0(hw_devicenames) != FUNC0(hw_addrs)) {
		FUNC2("Mismatched I2C hardware arrays\n");
		return -ENODEV;
	}
	if (itv->options.newi2c > 0) {
		FUNC8(&itv->i2c_adap, &ivtv_i2c_adap_hw_template,
		       sizeof(struct i2c_adapter));
	} else {
		FUNC8(&itv->i2c_adap, &ivtv_i2c_adap_template,
		       sizeof(struct i2c_adapter));
		FUNC8(&itv->i2c_algo, &ivtv_i2c_algo_template,
		       sizeof(struct i2c_algo_bit_data));
	}
	itv->i2c_algo.udelay = itv->options.i2c_clock_period / 2;
	itv->i2c_algo.data = itv;
	itv->i2c_adap.algo_data = &itv->i2c_algo;

	FUNC9(itv->i2c_adap.name + FUNC10(itv->i2c_adap.name), " #%d",
		itv->instance);
	FUNC5(&itv->i2c_adap, &itv->v4l2_dev);

	FUNC8(&itv->i2c_client, &ivtv_i2c_client_template,
	       sizeof(struct i2c_client));
	itv->i2c_client.adapter = &itv->i2c_adap;
	itv->i2c_adap.dev.parent = &itv->pdev->dev;

	FUNC1("setting scl and sda to 1\n");
	FUNC6(itv, 1);
	FUNC7(itv, 1);

	if (itv->options.newi2c > 0)
		retval = FUNC3(&itv->i2c_adap);
	else
		retval = FUNC4(&itv->i2c_adap);

	return retval;
}