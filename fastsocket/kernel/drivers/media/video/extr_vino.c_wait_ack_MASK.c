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
struct i2c_algo_sgi_data {int ack_timeout; int (* getctrl ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SGI_I2C_NACK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct i2c_algo_sgi_data*) ; 

__attribute__((used)) static int FUNC3(struct i2c_algo_sgi_data *adap)
{
	int i;

	if (FUNC2(adap))
		return -ETIMEDOUT;
	for (i = 0; i < adap->ack_timeout; i++) {
		if ((adap->getctrl(adap->data) & SGI_I2C_NACK) == 0)
			return 0;
		FUNC1(1);
	}

	return -ETIMEDOUT;
}