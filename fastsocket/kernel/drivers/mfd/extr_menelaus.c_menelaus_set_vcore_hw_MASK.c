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
struct TYPE_2__ {int vcore_hw_mode; int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MENELAUS_VCORE_CTRL1 ; 
 int /*<<< orphan*/  MENELAUS_VCORE_CTRL3 ; 
 int /*<<< orphan*/  MENELAUS_VCORE_CTRL4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 
 int /*<<< orphan*/  vcore_values ; 

int FUNC8(unsigned int roof_mV, unsigned int floor_mV)
{
	int fval, rval, val, ret;
	struct i2c_client *c = the_menelaus->client;

	rval = FUNC2(roof_mV, vcore_values,
				      FUNC0(vcore_values));
	if (rval < 0)
		return -EINVAL;
	fval = FUNC2(floor_mV, vcore_values,
				      FUNC0(vcore_values));
	if (fval < 0)
		return -EINVAL;

	FUNC1(&c->dev, "Setting VCORE FLOOR to %d mV and ROOF to %d mV\n",
	       floor_mV, roof_mV);

	FUNC6(&the_menelaus->lock);
	ret = FUNC4(MENELAUS_VCORE_CTRL3, fval);
	if (ret < 0)
		goto out;
	ret = FUNC4(MENELAUS_VCORE_CTRL4, rval);
	if (ret < 0)
		goto out;
	if (!the_menelaus->vcore_hw_mode) {
		val = FUNC3(MENELAUS_VCORE_CTRL1);
		/* HW mode, turn OFF byte comparator */
		val |= ((1 << 7) | (1 << 5));
		ret = FUNC4(MENELAUS_VCORE_CTRL1, val);
		the_menelaus->vcore_hw_mode = 1;
	}
	FUNC5(1);
out:
	FUNC7(&the_menelaus->lock);
	return ret;
}