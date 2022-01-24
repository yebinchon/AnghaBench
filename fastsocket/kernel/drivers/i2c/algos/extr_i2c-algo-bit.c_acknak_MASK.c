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
struct i2c_algo_bit_data {int udelay; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct i2c_algo_bit_data* algo_data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *i2c_adap, int is_ack)
{
	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;

	/* assert: sda is high */
	if (is_ack)		/* send ack */
		FUNC3(adap, 0);
	FUNC4((adap->udelay + 1) / 2);
	if (FUNC1(adap) < 0) {	/* timeout */
		FUNC0(&i2c_adap->dev, "readbytes: ack/nak timeout\n");
		return -ETIMEDOUT;
	}
	FUNC2(adap);
	return 0;
}