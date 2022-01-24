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
struct i2c_algo_bit_data {int /*<<< orphan*/  udelay; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct i2c_algo_bit_data* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct i2c_adapter*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *i2c_adap,
		       unsigned char addr, int retries)
{
	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;
	int i, ret = 0;

	for (i = 0; i <= retries; i++) {
		ret = FUNC1(i2c_adap, addr);
		if (ret == 1 || i == retries)
			break;
		FUNC0(3, &i2c_adap->dev, "emitting stop condition\n");
		FUNC3(adap);
		FUNC4(adap->udelay);
		FUNC5();
		FUNC0(3, &i2c_adap->dev, "emitting start condition\n");
		FUNC2(adap);
	}
	if (i && ret)
		FUNC0(1, &i2c_adap->dev, "Used %d tries to %s client at "
			"0x%02x: %s\n", i + 1,
			addr & 1 ? "read from" : "write to", addr >> 1,
			ret == 1 ? "success" : "failed, timeout?");
	return ret;
}