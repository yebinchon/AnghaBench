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
struct pwm_device {unsigned int pwm_id; unsigned int tcon_base; void* clk; void* clk_div; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {unsigned int id; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  S3C2410_TCON ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pwm_device*) ; 
 struct pwm_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct pwm_device*,char*,int) ; 
 scalar_t__ FUNC15 (struct pwm_device*) ; 
 int FUNC16 (struct pwm_device*) ; 
 unsigned long FUNC17 (struct pwm_device*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct pwm_device *pwm;
	unsigned long flags;
	unsigned long tcon;
	unsigned int id = pdev->id;
	int ret;

	if (id == 4) {
		FUNC7(dev, "TIMER4 is currently not supported\n");
		return -ENXIO;
	}

	pwm = FUNC10(sizeof(struct pwm_device), GFP_KERNEL);
	if (pwm == NULL) {
		FUNC7(dev, "failed to allocate pwm_device\n");
		return -ENOMEM;
	}

	pwm->pdev = pdev;
	pwm->pwm_id = id;

	/* calculate base of control bits in TCON */
	pwm->tcon_base = id == 0 ? 0 : (id * 4) + 4;

	pwm->clk = FUNC4(dev, "pwm-tin");
	if (FUNC0(pwm->clk)) {
		FUNC7(dev, "failed to get pwm tin clk\n");
		ret = FUNC1(pwm->clk);
		goto err_alloc;
	}

	pwm->clk_div = FUNC4(dev, "pwm-tdiv");
	if (FUNC0(pwm->clk_div)) {
		FUNC7(dev, "failed to get pwm tdiv clk\n");
		ret = FUNC1(pwm->clk_div);
		goto err_clk_tin;
	}

	FUNC12(flags);

	tcon = FUNC2(S3C2410_TCON);
	tcon |= FUNC17(pwm);
	FUNC3(tcon, S3C2410_TCON);

	FUNC11(flags);


	ret = FUNC16(pwm);
	if (ret) {
		FUNC7(dev, "failed to register pwm\n");
		goto err_clk_tdiv;
	}

	FUNC14(pwm, "config bits %02x\n",
		(FUNC2(S3C2410_TCON) >> pwm->tcon_base) & 0x0f);

	FUNC8(dev, "tin at %lu, tdiv at %lu, tin=%sclk, base %d\n",
		 FUNC5(pwm->clk),
		 FUNC5(pwm->clk_div),
		 FUNC15(pwm) ? "div" : "ext", pwm->tcon_base);

	FUNC13(pdev, pwm);
	return 0;

 err_clk_tdiv:
	FUNC6(pwm->clk_div);

 err_clk_tin:
	FUNC6(pwm->clk);

 err_alloc:
	FUNC9(pwm);
	return ret;
}