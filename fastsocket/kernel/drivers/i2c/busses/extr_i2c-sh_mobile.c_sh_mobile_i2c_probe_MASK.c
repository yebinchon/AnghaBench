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
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int retries; int nr; int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct sh_mobile_i2c_data {int /*<<< orphan*/  clk; int /*<<< orphan*/ * reg; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; struct i2c_adapter adap; int /*<<< orphan*/ * dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  clk_name ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*,struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_mobile_i2c_data*) ; 
 struct sh_mobile_i2c_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  sh_mobile_i2c_algorithm ; 
 int FUNC17 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(struct platform_device *dev)
{
	struct sh_mobile_i2c_data *pd;
	struct i2c_adapter *adap;
	struct resource *res;
	char clk_name[8];
	int size;
	int ret;

	pd = FUNC11(sizeof(struct sh_mobile_i2c_data), GFP_KERNEL);
	if (pd == NULL) {
		FUNC4(&dev->dev, "cannot allocate private data\n");
		return -ENOMEM;
	}

	FUNC18(clk_name, sizeof(clk_name), "i2c%d", dev->id);
	pd->clk = FUNC2(&dev->dev, clk_name);
	if (FUNC0(pd->clk)) {
		FUNC4(&dev->dev, "cannot get clock \"%s\"\n", clk_name);
		ret = FUNC1(pd->clk);
		goto err;
	}

	ret = FUNC17(dev, 1);
	if (ret) {
		FUNC4(&dev->dev, "cannot request IRQ\n");
		goto err_clk;
	}

	pd->dev = &dev->dev;
	FUNC13(dev, pd);

	res = FUNC12(dev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC4(&dev->dev, "cannot find IO resource\n");
		ret = -ENOENT;
		goto err_irq;
	}

	size = FUNC16(res);

	pd->reg = FUNC8(res->start, size);
	if (pd->reg == NULL) {
		FUNC4(&dev->dev, "cannot map IO\n");
		ret = -ENXIO;
		goto err_irq;
	}

	/* Enable Runtime PM for this device.
	 *
	 * Also tell the Runtime PM core to ignore children
	 * for this device since it is valid for us to suspend
	 * this I2C master driver even though the slave devices
	 * on the I2C bus may not be suspended.
	 *
	 * The state of the I2C hardware bus is unaffected by
	 * the Runtime PM state.
	 */
	FUNC15(&dev->dev, true);
	FUNC14(&dev->dev);

	/* setup the private data */
	adap = &pd->adap;
	FUNC6(adap, pd);

	adap->owner = THIS_MODULE;
	adap->algo = &sh_mobile_i2c_algorithm;
	adap->dev.parent = &dev->dev;
	adap->retries = 5;
	adap->nr = dev->id;

	FUNC20(adap->name, dev->name, sizeof(adap->name));

	FUNC19(&pd->lock);
	FUNC7(&pd->wait);

	ret = FUNC5(adap);
	if (ret < 0) {
		FUNC4(&dev->dev, "cannot add numbered adapter\n");
		goto err_all;
	}

	return 0;

 err_all:
	FUNC9(pd->reg);
 err_irq:
	FUNC17(dev, 0);
 err_clk:
	FUNC3(pd->clk);
 err:
	FUNC10(pd);
	return ret;
}