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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ vcore_hw_mode; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MENELAUS_VCORE_CTRL1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 
 int /*<<< orphan*/  vcore_values ; 

int FUNC7(unsigned int mV)
{
	int val, ret;
	struct i2c_client *c = the_menelaus->client;

	val = FUNC2(mV, vcore_values,
				     FUNC0(vcore_values));
	if (val < 0)
		return -EINVAL;

	FUNC1(&c->dev, "Setting VCORE to %d mV (val 0x%02x)\n", mV, val);

	/* Set SW mode and the voltage in one go. */
	FUNC5(&the_menelaus->lock);
	ret = FUNC3(MENELAUS_VCORE_CTRL1, val);
	if (ret == 0)
		the_menelaus->vcore_hw_mode = 0;
	FUNC6(&the_menelaus->lock);
	FUNC4(1);

	return ret;
}