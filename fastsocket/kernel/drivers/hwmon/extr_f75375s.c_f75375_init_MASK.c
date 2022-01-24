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
struct f75375s_platform_data {int /*<<< orphan*/ * pwm; int /*<<< orphan*/ * pwm_enable; } ;
struct f75375_data {int /*<<< orphan*/ * pwm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client, struct f75375_data *data,
		struct f75375s_platform_data *f75375s_pdata)
{
	int nr;
	FUNC3(client, 0, f75375s_pdata->pwm_enable[0]);
	FUNC3(client, 1, f75375s_pdata->pwm_enable[1]);
	for (nr = 0; nr < 2; nr++) {
		data->pwm[nr] = FUNC1(f75375s_pdata->pwm[nr], 0, 255);
		FUNC2(client, FUNC0(nr),
			data->pwm[nr]);
	}

}