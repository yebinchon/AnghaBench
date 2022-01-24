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
struct tsl2550_data {int operating_mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TSL2550_MODE_RANGE ; 
 struct tsl2550_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int mode)
{
	struct tsl2550_data *data = FUNC0(client);

	int ret = FUNC1(client, TSL2550_MODE_RANGE[mode]);

	data->operating_mode = mode;

	return ret;
}