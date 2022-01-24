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
struct i2c_algo_sgi_data {unsigned char (* rdata ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* setctrl ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EIO ; 
 int SGI_I2C_FORCE_IDLE ; 
 int SGI_I2C_HOLD_BUS ; 
 int SGI_I2C_NOT_IDLE ; 
 int SGI_I2C_READ ; 
 int SGI_I2C_RELEASE_BUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct i2c_algo_sgi_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_algo_sgi_data *adap, unsigned char *buf,
		    unsigned int len)
{
	int i;

	adap->setctrl(adap->data,
		      SGI_I2C_HOLD_BUS | SGI_I2C_READ | SGI_I2C_NOT_IDLE);
	for (i = 0; i < len; i++) {
		if (FUNC3(adap))
			return -EIO;
		buf[i] = adap->rdata(adap->data);
	}
	adap->setctrl(adap->data, SGI_I2C_RELEASE_BUS | SGI_I2C_FORCE_IDLE);

	return 0;

}