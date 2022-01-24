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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct adc_device {int prescale; scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  regs; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S3C2410_ADCCON ; 
 int S3C2410_ADCCON_PRSCEN ; 
 int FUNC2 (int) ; 
 struct adc_device* adc_dev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct adc_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adc_device*) ; 
 struct adc_device* FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct platform_device*,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct adc_device*) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adc_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 int /*<<< orphan*/  s3c_adc_irq ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct adc_device *adc;
	struct resource *regs;
	int ret;

	adc = FUNC12(sizeof(struct adc_device), GFP_KERNEL);
	if (adc == NULL) {
		FUNC6(dev, "failed to allocate adc_device\n");
		return -ENOMEM;
	}

	adc->pdev = pdev;
	adc->prescale = FUNC2(49);

	adc->irq = FUNC13(pdev, 1);
	if (adc->irq <= 0) {
		FUNC6(dev, "failed to get adc irq\n");
		ret = -ENOENT;
		goto err_alloc;
	}

	ret = FUNC16(adc->irq, s3c_adc_irq, 0, FUNC8(dev), adc);
	if (ret < 0) {
		FUNC6(dev, "failed to attach adc irq\n");
		goto err_alloc;
	}

	adc->clk = FUNC4(dev, "adc");
	if (FUNC0(adc->clk)) {
		FUNC6(dev, "failed to get adc clock\n");
		ret = FUNC1(adc->clk);
		goto err_irq;
	}

	regs = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!regs) {
		FUNC6(dev, "failed to find registers\n");
		ret = -ENXIO;
		goto err_clk;
	}

	adc->regs = FUNC10(regs->start, FUNC17(regs));
	if (!adc->regs) {
		FUNC6(dev, "failed to map registers\n");
		ret = -ENXIO;
		goto err_clk;
	}

	FUNC3(adc->clk);

	FUNC18(adc->prescale | S3C2410_ADCCON_PRSCEN,
	       adc->regs + S3C2410_ADCCON);

	FUNC7(dev, "attached adc driver\n");

	FUNC15(pdev, adc);
	adc_dev = adc;

	return 0;

 err_clk:
	FUNC5(adc->clk);

 err_irq:
	FUNC9(adc->irq, adc);

 err_alloc:
	FUNC11(adc);
	return ret;
}