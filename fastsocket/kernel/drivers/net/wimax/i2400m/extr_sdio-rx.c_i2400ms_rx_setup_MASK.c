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
struct device {int dummy; } ;
struct sdio_func {struct device dev; } ;
struct i2400m {int /*<<< orphan*/  rx_lock; } ;
struct i2400ms {int /*<<< orphan*/  bm_wait_result; int /*<<< orphan*/  bm_wfa_wq; struct i2400m i2400m; struct sdio_func* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  I2400MS_INTR_ENABLE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400ms*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  i2400ms_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct i2400ms *i2400ms)
{
	int result;
	struct sdio_func *func = i2400ms->func;
	struct device *dev = &func->dev;
	struct i2400m *i2400m = &i2400ms->i2400m;

	FUNC1(5, dev, "(i2400ms %p)\n", i2400ms);

	FUNC3(&i2400ms->bm_wfa_wq);
	FUNC9(&i2400m->rx_lock);
	i2400ms->bm_wait_result = -EINPROGRESS;
	FUNC10(&i2400m->rx_lock);

	FUNC4(func);
	result = FUNC5(func, i2400ms_irq);
	if (result < 0) {
		FUNC2(dev, "Cannot claim IRQ: %d\n", result);
		goto error_irq_claim;
	}
	result = 0;
	FUNC8(func, 1, I2400MS_INTR_ENABLE_ADDR, &result);
	if (result < 0) {
		FUNC7(func);
		FUNC2(dev, "Failed to enable interrupts %d\n", result);
	}
error_irq_claim:
	FUNC6(func);
	FUNC0(5, dev, "(i2400ms %p) = %d\n", i2400ms, result);
	return result;
}