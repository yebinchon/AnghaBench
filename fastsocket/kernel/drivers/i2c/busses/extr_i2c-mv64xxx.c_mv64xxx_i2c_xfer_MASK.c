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
struct mv64xxx_i2c_data {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 struct mv64xxx_i2c_data* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct mv64xxx_i2c_data*,struct i2c_msg*) ; 

__attribute__((used)) static int
FUNC2(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
	struct mv64xxx_i2c_data *drv_data = FUNC0(adap);
	int	i, rc;

	for (i=0; i<num; i++)
		if ((rc = FUNC1(drv_data, &msgs[i])) < 0)
			return rc;

	return num;
}