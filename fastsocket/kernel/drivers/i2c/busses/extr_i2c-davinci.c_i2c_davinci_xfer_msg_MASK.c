#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct i2c_msg {scalar_t__ len; int addr; int flags; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;
struct davinci_i2c_platform_data {scalar_t__ bus_delay; } ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; } ;
struct davinci_i2c_dev {int buf_len; int cmd_err; int terminate; TYPE_2__* dev; TYPE_1__ adapter; int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {struct davinci_i2c_platform_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_I2C_CNT_REG ; 
 int /*<<< orphan*/  DAVINCI_I2C_IMR_REG ; 
 int DAVINCI_I2C_IMR_RRDY ; 
 int DAVINCI_I2C_IMR_XRDY ; 
 int DAVINCI_I2C_MDR_IRS ; 
 int DAVINCI_I2C_MDR_MST ; 
 int /*<<< orphan*/  DAVINCI_I2C_MDR_REG ; 
 int DAVINCI_I2C_MDR_STP ; 
 int DAVINCI_I2C_MDR_STT ; 
 int DAVINCI_I2C_MDR_TRX ; 
 int DAVINCI_I2C_MDR_XA ; 
 int /*<<< orphan*/  DAVINCI_I2C_SAR_REG ; 
 int DAVINCI_I2C_STR_AL ; 
 int DAVINCI_I2C_STR_NACK ; 
 int EINVAL ; 
 int EIO ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_RD ; 
 int I2C_M_TEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 struct davinci_i2c_platform_data davinci_i2c_platform_data_default ; 
 int FUNC2 (struct davinci_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_i2c_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_i2c_dev*) ; 
 struct davinci_i2c_dev* FUNC6 (struct i2c_adapter*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct i2c_adapter *adap, struct i2c_msg *msg, int stop)
{
	struct davinci_i2c_dev *dev = FUNC6(adap);
	struct davinci_i2c_platform_data *pdata = dev->dev->platform_data;
	u32 flag;
	u16 w;
	int r;

	if (msg->len == 0)
		return -EINVAL;

	if (!pdata)
		pdata = &davinci_i2c_platform_data_default;
	/* Introduce a delay, required for some boards (e.g Davinci EVM) */
	if (pdata->bus_delay)
		FUNC8(pdata->bus_delay);

	/* set the slave address */
	FUNC3(dev, DAVINCI_I2C_SAR_REG, msg->addr);

	dev->buf = msg->buf;
	dev->buf_len = msg->len;

	FUNC3(dev, DAVINCI_I2C_CNT_REG, dev->buf_len);

	FUNC0(dev->cmd_complete);
	dev->cmd_err = 0;

	/* Take I2C out of reset, configure it as master and set the
	 * start bit */
	flag = DAVINCI_I2C_MDR_IRS | DAVINCI_I2C_MDR_MST | DAVINCI_I2C_MDR_STT;

	/* if the slave address is ten bit address, enable XA bit */
	if (msg->flags & I2C_M_TEN)
		flag |= DAVINCI_I2C_MDR_XA;
	if (!(msg->flags & I2C_M_RD))
		flag |= DAVINCI_I2C_MDR_TRX;
	if (stop)
		flag |= DAVINCI_I2C_MDR_STP;

	/* Enable receive or transmit interrupts */
	w = FUNC2(dev, DAVINCI_I2C_IMR_REG);
	if (msg->flags & I2C_M_RD)
		FUNC1(w, DAVINCI_I2C_IMR_RRDY, 1);
	else
		FUNC1(w, DAVINCI_I2C_IMR_XRDY, 1);
	FUNC3(dev, DAVINCI_I2C_IMR_REG, w);

	dev->terminate = 0;
	/* write the data into mode register */
	FUNC3(dev, DAVINCI_I2C_MDR_REG, flag);

	r = FUNC9(&dev->cmd_complete,
						      dev->adapter.timeout);
	if (r == 0) {
		FUNC4(dev->dev, "controller timed out\n");
		FUNC5(dev);
		dev->buf_len = 0;
		return -ETIMEDOUT;
	}
	if (dev->buf_len) {
		/* This should be 0 if all bytes were transferred
		 * or dev->cmd_err denotes an error.
		 * A signal may have aborted the transfer.
		 */
		if (r >= 0) {
			FUNC4(dev->dev, "abnormal termination buf_len=%i\n",
				dev->buf_len);
			r = -EREMOTEIO;
		}
		dev->terminate = 1;
		FUNC10();
		dev->buf_len = 0;
	}
	if (r < 0)
		return r;

	/* no error */
	if (FUNC7(!dev->cmd_err))
		return msg->len;

	/* We have an error */
	if (dev->cmd_err & DAVINCI_I2C_STR_AL) {
		FUNC5(dev);
		return -EIO;
	}

	if (dev->cmd_err & DAVINCI_I2C_STR_NACK) {
		if (msg->flags & I2C_M_IGNORE_NAK)
			return msg->len;
		if (stop) {
			w = FUNC2(dev, DAVINCI_I2C_MDR_REG);
			FUNC1(w, DAVINCI_I2C_MDR_STP, 1);
			FUNC3(dev, DAVINCI_I2C_MDR_REG, w);
		}
		return -EREMOTEIO;
	}
	return -EIO;
}