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
struct s3c24xx_i2c {struct s3c24xx_i2c* ioarea; int /*<<< orphan*/  regs; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; int /*<<< orphan*/  adap; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c24xx_i2c*) ; 
 struct s3c24xx_i2c* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct s3c24xx_i2c*) ; 
 int /*<<< orphan*/  FUNC8 (struct s3c24xx_i2c*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct s3c24xx_i2c *i2c = FUNC6(pdev);

	FUNC8(i2c);

	FUNC3(&i2c->adap);
	FUNC2(i2c->irq, i2c);

	FUNC0(i2c->clk);
	FUNC1(i2c->clk);

	FUNC4(i2c->regs);

	FUNC7(i2c->ioarea);
	FUNC5(i2c->ioarea);
	FUNC5(i2c);

	return 0;
}