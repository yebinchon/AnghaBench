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
struct i2c_msg {int dummy; } ;
struct i2c_algo_iop3xx_data {int dummy; } ;
struct i2c_adapter {struct i2c_algo_iop3xx_data* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_algo_iop3xx_data*) ; 
 int FUNC1 (struct i2c_adapter*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_iop3xx_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_algo_iop3xx_data*,int*) ; 

__attribute__((used)) static int 
FUNC5(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, 
				int num)
{
	struct i2c_algo_iop3xx_data *iop3xx_adap = i2c_adap->algo_data;
	int im = 0;
	int ret = 0;
	int status;

	FUNC4(iop3xx_adap, &status);
	FUNC2(iop3xx_adap);
	FUNC0(iop3xx_adap);

	for (im = 0; ret == 0 && im != num; im++) {
		ret = FUNC1(i2c_adap, &msgs[im]);
	}

	FUNC3(iop3xx_adap);
	
	if(ret)
		return ret;

	return im;   
}