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
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,int,int,void*) ; 
 int FUNC1 (struct i2c_client*,int,int,void*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int gpio,
			unsigned int ngpio, void *c)
{
	int status;

	if (ngpio < 8)
		return -EINVAL;

	status = FUNC1(client, gpio, 4, c);
	if (status)
		return status;

	return FUNC0(client, gpio+4, 4, c);
}