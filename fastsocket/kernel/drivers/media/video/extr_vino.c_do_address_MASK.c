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
struct i2c_algo_sgi_data {int (* getctrl ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* wdata ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  (* setctrl ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EIO ; 
 int SGI_I2C_HOLD_BUS ; 
 int SGI_I2C_NOT_IDLE ; 
 int SGI_I2C_WRITE ; 
 scalar_t__ FUNC0 (struct i2c_algo_sgi_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (struct i2c_algo_sgi_data*) ; 

__attribute__((used)) static int FUNC6(struct i2c_algo_sgi_data *adap, unsigned int addr,
		      int rd)
{
	if (rd)
		adap->setctrl(adap->data, SGI_I2C_NOT_IDLE);
	/* Check if bus is idle, eventually force it to do so */
	if (adap->getctrl(adap->data) & SGI_I2C_NOT_IDLE)
		if (FUNC0(adap))
			return -EIO;
	/* Write out the i2c chip address and specify operation */
	adap->setctrl(adap->data,
		      SGI_I2C_HOLD_BUS | SGI_I2C_WRITE | SGI_I2C_NOT_IDLE);
	if (rd)
		addr |= 1;
	adap->wdata(adap->data, addr);
	if (FUNC5(adap))
		return -EIO;
	return 0;
}