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
struct i2400ms {struct sdio_func* func; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int I2400MS_INTR_GET_SIZE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400ms*,long) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400ms*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,unsigned int,int) ; 
 int FUNC4 (struct sdio_func*,unsigned int,int*) ; 

ssize_t FUNC5(struct i2400ms *i2400ms)
{
	int ret, cnt, val;
	ssize_t rx_size;
	unsigned xfer_size_addr;
	struct sdio_func *func = i2400ms->func;
	struct device *dev = &i2400ms->func->dev;

	FUNC1(7, dev, "(i2400ms %p)\n", i2400ms);
	xfer_size_addr = I2400MS_INTR_GET_SIZE_ADDR;
	rx_size = 0;
	for (cnt = 0; cnt < 3; cnt++) {
		val = FUNC4(func, xfer_size_addr + cnt, &ret);
		if (ret < 0) {
			FUNC3(dev, "RX: Can't read byte %d of RX size from "
				"0x%08x: %d\n", cnt, xfer_size_addr + cnt, ret);
			rx_size = ret;
			goto error_read;
		}
		rx_size = rx_size << 8 | (val & 0xff);
	}
	FUNC2(6, dev, "RX: rx_size is %ld\n", (long) rx_size);
error_read:
	FUNC0(7, dev, "(i2400ms %p) = %ld\n", i2400ms, (long) rx_size);
	return rx_size;
}