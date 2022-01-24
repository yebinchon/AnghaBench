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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; TYPE_1__ dev; TYPE_2__* algo_data; int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {int udelay; int /*<<< orphan*/  timeout; int /*<<< orphan*/  getscl; int /*<<< orphan*/  getsda; int /*<<< orphan*/  setscl; int /*<<< orphan*/  setsda; struct simtec_i2c_data* data; } ;
struct simtec_i2c_data {struct simtec_i2c_data* ioarea; int /*<<< orphan*/ * reg; TYPE_3__ adap; TYPE_2__ bit; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct simtec_i2c_data*) ; 
 struct simtec_i2c_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct simtec_i2c_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct simtec_i2c_data*) ; 
 struct simtec_i2c_data* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  simtec_i2c_getscl ; 
 int /*<<< orphan*/  simtec_i2c_getsda ; 
 int /*<<< orphan*/  simtec_i2c_setscl ; 
 int /*<<< orphan*/  simtec_i2c_setsda ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	struct simtec_i2c_data *pd;
	struct resource *res;
	int size;
	int ret;

	pd = FUNC5(sizeof(struct simtec_i2c_data), GFP_KERNEL);
	if (pd == NULL) {
		FUNC0(&dev->dev, "cannot allocate private data\n");
		return -ENOMEM;
	}

	FUNC7(dev, pd);

	res = FUNC6(dev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(&dev->dev, "cannot find IO resource\n");
		ret = -ENOENT;
		goto err;
	}

	size = FUNC10(res);

	pd->ioarea = FUNC9(res->start, size, dev->name);
	if (pd->ioarea == NULL) {
		FUNC0(&dev->dev, "cannot request IO\n");
		ret = -ENXIO;
		goto err;
	}

	pd->reg = FUNC2(res->start, size);
	if (pd->reg == NULL) {
		FUNC0(&dev->dev, "cannot map IO\n");
		ret = -ENXIO;
		goto err_res;
	}

	/* setup the private data */

	pd->adap.owner = THIS_MODULE;
	pd->adap.algo_data = &pd->bit;
	pd->adap.dev.parent = &dev->dev;

	FUNC11(pd->adap.name, "Simtec I2C", sizeof(pd->adap.name));

	pd->bit.data = pd;
	pd->bit.setsda = simtec_i2c_setsda;
	pd->bit.setscl = simtec_i2c_setscl;
	pd->bit.getsda = simtec_i2c_getsda;
	pd->bit.getscl = simtec_i2c_getscl;
	pd->bit.timeout = HZ;
	pd->bit.udelay = 20;

	ret = FUNC1(&pd->adap);
	if (ret)
		goto err_all;

	return 0;

 err_all:
	FUNC3(pd->reg);

 err_res:
	FUNC8(pd->ioarea);
	FUNC4(pd->ioarea);

 err:
	FUNC4(pd);
	return ret;
}