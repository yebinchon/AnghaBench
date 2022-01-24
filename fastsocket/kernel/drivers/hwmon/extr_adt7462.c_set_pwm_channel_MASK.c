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
struct adt7462_data {int* pwm_cfg; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ADT7462_PWM_CHANNEL_MASK ; 
 int ADT7462_PWM_CHANNEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client,
			    struct adt7462_data *data,
			    int which,
			    int value)
{
	int temp = data->pwm_cfg[which] & ~ADT7462_PWM_CHANNEL_MASK;
	temp |= value << ADT7462_PWM_CHANNEL_SHIFT;

	FUNC2(&data->lock);
	data->pwm_cfg[which] = temp;
	FUNC1(client, FUNC0(which), temp);
	FUNC3(&data->lock);
}