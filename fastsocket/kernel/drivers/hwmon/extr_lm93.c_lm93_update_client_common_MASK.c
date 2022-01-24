#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lm93_data {int /*<<< orphan*/  block1; void* sf_tach_to_pwm; void* sfc2; void* sfc1; void* pwm_ramp_ctl; void** auto_pwm_min_hyst; void** boost_hyst; void** boost; void* prochot_interval; void* prochot_override; void* gpi; void** vccp_limits; void** prochot_max; void** vid; void* config; TYPE_1__* temp_lim; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {void* max; void* min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LM93_REG_BOOST_HYST_12 ; 
 int /*<<< orphan*/  LM93_REG_BOOST_HYST_34 ; 
 int /*<<< orphan*/  LM93_REG_CONFIG ; 
 int /*<<< orphan*/  LM93_REG_GPI ; 
 scalar_t__ LM93_REG_HOST_ERROR_1 ; 
 int /*<<< orphan*/  LM93_REG_PROCHOT_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LM93_REG_PROCHOT_OVERRIDE ; 
 int /*<<< orphan*/  LM93_REG_PWM_MIN_HYST_12 ; 
 int /*<<< orphan*/  LM93_REG_PWM_MIN_HYST_34 ; 
 int /*<<< orphan*/  LM93_REG_PWM_RAMP_CTL ; 
 int /*<<< orphan*/  LM93_REG_SFC1 ; 
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 int /*<<< orphan*/  LM93_REG_SF_TACH_TO_PWM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct lm93_data *data,
				      struct i2c_client *client)
{
	int i;
	u8 *ptr;

	/* temp1 - temp4: limits */
	for (i = 0; i < 4; i++) {
		data->temp_lim[i].min =
			FUNC6(client, FUNC3(i));
		data->temp_lim[i].max =
			FUNC6(client, FUNC2(i));
	}

	/* config register */
	data->config = FUNC6(client, LM93_REG_CONFIG);

	/* vid1 - vid2: values */
	for (i = 0; i < 2; i++)
		data->vid[i] = FUNC6(client, FUNC5(i));

	/* prochot1 - prochot2: limits */
	for (i = 0; i < 2; i++)
		data->prochot_max[i] = FUNC6(client,
				FUNC1(i));

	/* vccp1 - vccp2: VID relative limits */
	for (i = 0; i < 2; i++)
		data->vccp_limits[i] = FUNC6(client,
				FUNC4(i));

	/* GPIO input state */
	data->gpi = FUNC6(client, LM93_REG_GPI);

	/* #PROCHOT override state */
	data->prochot_override = FUNC6(client,
			LM93_REG_PROCHOT_OVERRIDE);

	/* #PROCHOT intervals */
	data->prochot_interval = FUNC6(client,
			LM93_REG_PROCHOT_INTERVAL);

	/* Fan Boost Termperature registers */
	for (i = 0; i < 4; i++)
		data->boost[i] = FUNC6(client, FUNC0(i));

	/* Fan Boost Temperature Hyst. registers */
	data->boost_hyst[0] = FUNC6(client, LM93_REG_BOOST_HYST_12);
	data->boost_hyst[1] = FUNC6(client, LM93_REG_BOOST_HYST_34);

	/* Temperature Zone Min. PWM & Hysteresis registers */
	data->auto_pwm_min_hyst[0] =
			FUNC6(client, LM93_REG_PWM_MIN_HYST_12);
	data->auto_pwm_min_hyst[1] =
			FUNC6(client, LM93_REG_PWM_MIN_HYST_34);

	/* #PROCHOT & #VRDHOT PWM Ramp Control register */
	data->pwm_ramp_ctl = FUNC6(client, LM93_REG_PWM_RAMP_CTL);

	/* misc setup registers */
	data->sfc1 = FUNC6(client, LM93_REG_SFC1);
	data->sfc2 = FUNC6(client, LM93_REG_SFC2);
	data->sf_tach_to_pwm = FUNC6(client,
			LM93_REG_SF_TACH_TO_PWM);

	/* write back alarm values to clear */
	for (i = 0, ptr = (u8 *)(&data->block1); i < 8; i++)
		FUNC7(client, LM93_REG_HOST_ERROR_1 + i, *(ptr + i));
}