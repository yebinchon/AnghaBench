#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct davinci_i2c_dev {int /*<<< orphan*/ * clk; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_MDR_REG ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_I2C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct davinci_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_i2c_dev*) ; 
 struct davinci_i2c_dev* FUNC6 (struct platform_device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct resource*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct davinci_i2c_dev *dev = FUNC6(pdev);
	struct resource *mem;

	FUNC8(pdev, NULL);
	FUNC4(&dev->adapter);
	FUNC9(&pdev->dev);

	FUNC0(dev->clk);
	FUNC1(dev->clk);
	dev->clk = NULL;

	FUNC2(dev, DAVINCI_I2C_MDR_REG, 0);
	FUNC3(IRQ_I2C, dev);
	FUNC5(dev);

	mem = FUNC7(pdev, IORESOURCE_MEM, 0);
	FUNC10(mem->start, FUNC11(mem));
	return 0;
}