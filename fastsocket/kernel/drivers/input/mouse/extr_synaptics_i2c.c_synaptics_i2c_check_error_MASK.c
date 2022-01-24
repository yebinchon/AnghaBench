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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int CONFIGURED_MSK ; 
 int /*<<< orphan*/  DEVICE_STATUS_REG ; 
 int ERROR_MSK ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int status, ret = 0;

	status = FUNC0(client, DEVICE_STATUS_REG) &
		(CONFIGURED_MSK | ERROR_MSK);

	if (status != CONFIGURED_MSK)
		ret = FUNC1(client);

	return ret;
}