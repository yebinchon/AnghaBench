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
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_algo_iop3xx_data {int dummy; } ;
struct i2c_adapter {struct i2c_algo_iop3xx_data* algo_data; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_algo_iop3xx_data*,struct i2c_msg*) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC3(struct i2c_adapter *i2c_adap, struct i2c_msg* pmsg) 
{
	struct i2c_algo_iop3xx_data *iop3xx_adap = i2c_adap->algo_data;
	int rc;

	rc = FUNC1(iop3xx_adap, pmsg);
	if (rc < 0) {
		return rc;
	}

	if ((pmsg->flags&I2C_M_RD)) {
		return FUNC0(i2c_adap, pmsg->buf, pmsg->len);
	} else {
		return FUNC2(i2c_adap, pmsg->buf, pmsg->len);
	}
}