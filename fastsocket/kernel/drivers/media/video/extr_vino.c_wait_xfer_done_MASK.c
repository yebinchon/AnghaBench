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
struct i2c_algo_sgi_data {int xfer_timeout; int (* getctrl ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int SGI_I2C_XFER_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct i2c_algo_sgi_data *adap)
{
	int i;

	for (i = 0; i < adap->xfer_timeout; i++) {
		if ((adap->getctrl(adap->data) & SGI_I2C_XFER_BUSY) == 0)
			return 0;
		FUNC1(1);
	}

	return -ETIMEDOUT;
}