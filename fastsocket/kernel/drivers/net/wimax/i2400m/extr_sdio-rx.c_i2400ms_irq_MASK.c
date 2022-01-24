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
struct i2400ms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400MS_INTR_CLEAR_ADDR ; 
 int /*<<< orphan*/  I2400MS_INTR_STATUS_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct i2400ms*) ; 
 struct i2400ms* FUNC4 (struct sdio_func*) ; 
 int FUNC5 (struct sdio_func*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_func*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static
void FUNC7(struct sdio_func *func)
{
	int ret;
	struct i2400ms *i2400ms = FUNC4(func);
	struct device *dev = &func->dev;
	int val;

	FUNC1(6, dev, "(i2400ms %p)\n", i2400ms);
	val = FUNC5(func, I2400MS_INTR_STATUS_ADDR, &ret);
	if (ret < 0) {
		FUNC2(dev, "RX: Can't read interrupt status: %d\n", ret);
		goto error_no_irq;
	}
	if (!val) {
		FUNC2(dev, "RX: BUG? got IRQ but no interrupt ready?\n");
		goto error_no_irq;
	}
	FUNC6(func, 1, I2400MS_INTR_CLEAR_ADDR, &ret);
	FUNC3(i2400ms);
error_no_irq:
	FUNC0(6, dev, "(i2400ms %p) = void\n", i2400ms);
	return;
}