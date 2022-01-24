#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; TYPE_1__* bus; } ;
struct i2c_adapter {scalar_t__ timeout; scalar_t__ nr; TYPE_2__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  bus_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ __i2c_first_dynamic_bus_num ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  i2c_adapter_compat_class ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int /*<<< orphan*/  i2c_adapter_type ; 
 TYPE_1__ i2c_bus_type ; 
 int /*<<< orphan*/  i2c_do_add_adapter ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *adap)
{
	int res = 0, dummy;

	/* Can't register until after driver model init */
	if (FUNC12(FUNC0(!i2c_bus_type.p))) {
		res = -EAGAIN;
		goto out_list;
	}

	FUNC9(&adap->bus_lock);

	/* Set default timeout to 1 second if not already set */
	if (adap->timeout == 0)
		adap->timeout = HZ;

	FUNC4(&adap->dev, "i2c-%d", adap->nr);
	adap->dev.bus = &i2c_bus_type;
	adap->dev.type = &i2c_adapter_type;
	res = FUNC6(&adap->dev);
	if (res)
		goto out_list;

	FUNC3(&adap->dev, "adapter [%s] registered\n", adap->name);

#ifdef CONFIG_I2C_COMPAT
	res = class_compat_create_link(i2c_adapter_compat_class, &adap->dev,
				       adap->dev.parent);
	if (res)
		dev_warn(&adap->dev,
			 "Failed to create compatibility class link\n");
#endif

	/* create pre-declared device nodes */
	if (adap->nr < __i2c_first_dynamic_bus_num)
		FUNC7(adap);

	/* Notify drivers */
	FUNC10(&core_lock);
	dummy = FUNC1(&i2c_bus_type, NULL, adap,
				 i2c_do_add_adapter);
	FUNC11(&core_lock);

	return 0;

out_list:
	FUNC10(&core_lock);
	FUNC8(&i2c_adapter_idr, adap->nr);
	FUNC11(&core_lock);
	return res;
}