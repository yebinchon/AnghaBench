#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* parent; struct s3c2410_platform_i2c* platform_data; } ;
struct TYPE_7__ {int retries; int class; TYPE_2__ dev; int /*<<< orphan*/  nr; struct s3c24xx_i2c* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct s3c24xx_i2c {int tx_setup; int irq; int /*<<< orphan*/  clk; struct s3c24xx_i2c* ioarea; int /*<<< orphan*/ * regs; TYPE_1__ adap; TYPE_2__* dev; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
struct s3c2410_platform_i2c {int /*<<< orphan*/  bus_num; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct s3c24xx_i2c*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct s3c24xx_i2c*) ; 
 struct s3c24xx_i2c* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC19 (struct s3c24xx_i2c*) ; 
 int FUNC20 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct s3c24xx_i2c*) ; 
 struct s3c24xx_i2c* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 int /*<<< orphan*/  s3c24xx_i2c_algorithm ; 
 int /*<<< orphan*/  FUNC23 (struct s3c24xx_i2c*) ; 
 int FUNC24 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  s3c24xx_i2c_irq ; 
 int FUNC25 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct s3c24xx_i2c *i2c;
	struct s3c2410_platform_i2c *pdata;
	struct resource *res;
	int ret;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		FUNC6(&pdev->dev, "no platform data\n");
		return -EINVAL;
	}

	i2c = FUNC15(sizeof(struct s3c24xx_i2c), GFP_KERNEL);
	if (!i2c) {
		FUNC6(&pdev->dev, "no memory for state\n");
		return -ENOMEM;
	}

	FUNC27(i2c->adap.name, "s3c2410-i2c", sizeof(i2c->adap.name));
	i2c->adap.owner   = THIS_MODULE;
	i2c->adap.algo    = &s3c24xx_i2c_algorithm;
	i2c->adap.retries = 2;
	i2c->adap.class   = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	i2c->tx_setup     = 50;

	FUNC26(&i2c->lock);
	FUNC11(&i2c->wait);

	/* find the clock and enable it */

	i2c->dev = &pdev->dev;
	i2c->clk = FUNC3(&pdev->dev, "i2c");
	if (FUNC0(i2c->clk)) {
		FUNC6(&pdev->dev, "cannot get clock\n");
		ret = -ENOENT;
		goto err_noclk;
	}

	FUNC5(&pdev->dev, "clock source %p\n", &i2c->clk);

	FUNC2(i2c->clk);

	/* map the registers */

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC6(&pdev->dev, "cannot find IO resource\n");
		ret = -ENOENT;
		goto err_clk;
	}

	i2c->ioarea = FUNC21(res->start, FUNC22(res),
					 pdev->name);

	if (i2c->ioarea == NULL) {
		FUNC6(&pdev->dev, "cannot request IO\n");
		ret = -ENXIO;
		goto err_clk;
	}

	i2c->regs = FUNC12(res->start, FUNC22(res));

	if (i2c->regs == NULL) {
		FUNC6(&pdev->dev, "cannot map IO\n");
		ret = -ENXIO;
		goto err_ioarea;
	}

	FUNC5(&pdev->dev, "registers %p (%p, %p)\n",
		i2c->regs, i2c->ioarea, res);

	/* setup info block for the i2c core */

	i2c->adap.algo_data = i2c;
	i2c->adap.dev.parent = &pdev->dev;

	/* initialise the i2c controller */

	ret = FUNC24(i2c);
	if (ret != 0)
		goto err_iomap;

	/* find the IRQ for this unit (note, this relies on the init call to
	 * ensure no current IRQs pending
	 */

	i2c->irq = ret = FUNC16(pdev, 0);
	if (ret <= 0) {
		FUNC6(&pdev->dev, "cannot find IRQ\n");
		goto err_iomap;
	}

	ret = FUNC20(i2c->irq, s3c24xx_i2c_irq, IRQF_DISABLED,
			  FUNC8(&pdev->dev), i2c);

	if (ret != 0) {
		FUNC6(&pdev->dev, "cannot claim IRQ %d\n", i2c->irq);
		goto err_iomap;
	}

	ret = FUNC25(i2c);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to register cpufreq notifier\n");
		goto err_irq;
	}

	/* Note, previous versions of the driver used i2c_add_adapter()
	 * to add the bus at any number. We now pass the bus number via
	 * the platform data, so if unset it will now default to always
	 * being bus 0.
	 */

	i2c->adap.nr = pdata->bus_num;

	ret = FUNC10(&i2c->adap);
	if (ret < 0) {
		FUNC6(&pdev->dev, "failed to add bus to i2c core\n");
		goto err_cpufreq;
	}

	FUNC18(pdev, i2c);

	FUNC7(&pdev->dev, "%s: S3C I2C adapter\n", FUNC8(&i2c->adap.dev));
	return 0;

 err_cpufreq:
	FUNC23(i2c);

 err_irq:
	FUNC9(i2c->irq, i2c);

 err_iomap:
	FUNC13(i2c->regs);

 err_ioarea:
	FUNC19(i2c->ioarea);
	FUNC14(i2c->ioarea);

 err_clk:
	FUNC1(i2c->clk);
	FUNC4(i2c->clk);

 err_noclk:
	FUNC14(i2c);
	return ret;
}