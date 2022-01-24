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
struct sh_mobile_i2c_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*) ; 
 int ICCR_ICE ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sh_mobile_i2c_data *pd)
{
	/* Clear/disable interrupts */
	FUNC5(0, FUNC2(pd));
	FUNC5(0, FUNC1(pd));

	/* Disable channel */
	FUNC5(FUNC4(FUNC0(pd)) & ~ICCR_ICE, FUNC0(pd));

	/* Disable clock and mark device as idle */
	FUNC3(pd->clk);
	FUNC6(pd->dev);
}