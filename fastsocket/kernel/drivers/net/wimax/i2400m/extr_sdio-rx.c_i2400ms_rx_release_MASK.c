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
struct i2400ms {int /*<<< orphan*/  bm_wfa_wq; int /*<<< orphan*/  bm_ack_size; struct i2400m i2400m; struct sdio_func* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  I2400MS_INTR_ENABLE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400ms*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct i2400ms *i2400ms)
{
	int result;
	struct sdio_func *func = i2400ms->func;
	struct device *dev = &func->dev;
	struct i2400m *i2400m = &i2400ms->i2400m;

	FUNC1(5, dev, "(i2400ms %p)\n", i2400ms);
	FUNC6(&i2400m->rx_lock);
	i2400ms->bm_ack_size = -EINTR;
	FUNC7(&i2400m->rx_lock);
	FUNC8(&i2400ms->bm_wfa_wq);
	FUNC2(func);
	FUNC5(func, 0, I2400MS_INTR_ENABLE_ADDR, &result);
	FUNC4(func);
	FUNC3(func);
	FUNC0(5, dev, "(i2400ms %p) = %d\n", i2400ms, result);
}