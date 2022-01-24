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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {int* pwm; int* pwm_enable; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F75375_REG_FAN_TIMER ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct f75375_data* FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int nr, int val)
{
	struct f75375_data *data = FUNC4(client);
	u8 fanmode;

	if (val < 0 || val > 4)
		return -EINVAL;

	fanmode = FUNC2(client, F75375_REG_FAN_TIMER);
	fanmode = ~(3 << FUNC1(nr));

	switch (val) {
	case 0: /* Full speed */
		fanmode  |= (3 << FUNC1(nr));
		data->pwm[nr] = 255;
		FUNC3(client, FUNC0(nr),
				data->pwm[nr]);
		break;
	case 1: /* PWM */
		fanmode  |= (3 << FUNC1(nr));
		break;
	case 2: /* AUTOMATIC*/
		fanmode  |= (2 << FUNC1(nr));
		break;
	case 3: /* fan speed */
		break;
	}
	FUNC3(client, F75375_REG_FAN_TIMER, fanmode);
	data->pwm_enable[nr] = val;
	return 0;
}