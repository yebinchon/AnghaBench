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
typedef  void* u_int8_t ;
typedef  int u_int32_t ;
struct sh_mobile_i2c_data {int iccl; int icch; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*) ; 
 int ICCR_ICE ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_i2c_data*) ; 
 int NORMAL_SPEED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sh_mobile_i2c_data *pd)
{
	unsigned long i2c_clk;
	u_int32_t num;
	u_int32_t denom;
	u_int32_t tmp;

	/* Wake up device and enable clock */
	FUNC8(pd->dev);
	FUNC4(pd->clk);

	/* Get clock rate after clock is enabled */
	i2c_clk = FUNC5(pd->clk);

	/* Calculate the value for iccl. From the data sheet:
	 * iccl = (p clock / transfer rate) * (L / (L + H))
	 * where L and H are the SCL low/high ratio (5/4 in this case).
	 * We also round off the result.
	 */
	num = i2c_clk * 5;
	denom = NORMAL_SPEED * 9;
	tmp = num * 10 / denom;
	if (tmp % 10 >= 5)
		pd->iccl = (u_int8_t)((num/denom) + 1);
	else
		pd->iccl = (u_int8_t)(num/denom);

	/* Calculate the value for icch. From the data sheet:
	   icch = (p clock / transfer rate) * (H / (L + H)) */
	num = i2c_clk * 4;
	tmp = num * 10 / denom;
	if (tmp % 10 >= 5)
		pd->icch = (u_int8_t)((num/denom) + 1);
	else
		pd->icch = (u_int8_t)(num/denom);

	/* Enable channel and configure rx ack */
	FUNC7(FUNC6(FUNC2(pd)) | ICCR_ICE, FUNC2(pd));

	/* Mask all interrupts */
	FUNC7(0, FUNC3(pd));

	/* Set the clock */
	FUNC7(pd->iccl, FUNC1(pd));
	FUNC7(pd->icch, FUNC0(pd));
}