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
struct f71882fg_data {scalar_t__ type; int valid; int temp_start; int* temp_type; int /*<<< orphan*/  update_lock; void* last_updated; void** in; void* in_status; void** fan; void** pwm; void** fan_full_speed; void** fan_target; void* fan_status; int /*<<< orphan*/ * temp; void* temp_diode_open; void* temp_status; void* last_limits; void*** pwm_auto_point_temp; void*** pwm_auto_point_pwm; void** pwm_auto_point_mapping; void** pwm_auto_point_hyst; void* pwm_enable; void* temp_beep; void* fan_beep; void** temp_hyst; void** temp_high; void** temp_ovt; void* in_beep; void* in1_max; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_FAN_BEEP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_FAN_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_IN1_HIGH ; 
 int /*<<< orphan*/  F71882FG_REG_IN_BEEP ; 
 int /*<<< orphan*/  F71882FG_REG_IN_STATUS ; 
 int /*<<< orphan*/  F71882FG_REG_PECI ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_BEEP ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_DIODE_OPEN ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_STATUS ; 
 int /*<<< orphan*/  F71882FG_REG_TEMP_TYPE ; 
 int HZ ; 
 struct f71882fg_data* FUNC12 (struct device*) ; 
 scalar_t__ f71858fg ; 
 scalar_t__ f71862fg ; 
 scalar_t__ f71882fg ; 
 void* FUNC13 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct f71882fg_data*,int) ; 
 scalar_t__ f8000 ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (void*,void*) ; 

__attribute__((used)) static struct f71882fg_data *FUNC19(struct device *dev)
{
	struct f71882fg_data *data = FUNC12(dev);
	int nr, reg = 0, reg2;
	int nr_fans = (data->type == f71882fg) ? 4 : 3;
	int nr_ins = (data->type == f71858fg || data->type == f8000) ? 3 : 9;

	FUNC16(&data->update_lock);

	/* Update once every 60 seconds */
	if ( FUNC18(jiffies, data->last_limits + 60 * HZ ) ||
			!data->valid) {
		if (data->type == f71882fg) {
			data->in1_max =
				FUNC14(data, F71882FG_REG_IN1_HIGH);
			data->in_beep =
				FUNC14(data, F71882FG_REG_IN_BEEP);
		}

		/* Get High & boundary temps*/
		for (nr = data->temp_start; nr < 3 + data->temp_start; nr++) {
			data->temp_ovt[nr] = FUNC14(data,
						FUNC11(nr));
			data->temp_high[nr] = FUNC14(data,
						FUNC9(nr));
		}

		if (data->type != f8000) {
			data->temp_hyst[0] = FUNC14(data,
						FUNC10(0));
			data->temp_hyst[1] = FUNC14(data,
						FUNC10(1));
		}

		if (data->type == f71862fg || data->type == f71882fg) {
			data->fan_beep = FUNC14(data,
						F71882FG_REG_FAN_BEEP);
			data->temp_beep = FUNC14(data,
						F71882FG_REG_TEMP_BEEP);
			/* Have to hardcode type, because temp1 is special */
			reg  = FUNC14(data, F71882FG_REG_TEMP_TYPE);
			data->temp_type[2] = (reg & 0x04) ? 2 : 4;
			data->temp_type[3] = (reg & 0x08) ? 2 : 4;
		}
		reg2 = FUNC14(data, F71882FG_REG_PECI);
		if ((reg2 & 0x03) == 0x01)
			data->temp_type[1] = 6 /* PECI */;
		else if ((reg2 & 0x03) == 0x02)
			data->temp_type[1] = 5 /* AMDSI */;
		else if (data->type == f71862fg || data->type == f71882fg)
			data->temp_type[1] = (reg & 0x02) ? 2 : 4;
		else
			data->temp_type[1] = 2; /* Only supports BJT */

		data->pwm_enable = FUNC14(data,
						  F71882FG_REG_PWM_ENABLE);
		data->pwm_auto_point_hyst[0] =
			FUNC14(data, FUNC2(0));
		data->pwm_auto_point_hyst[1] =
			FUNC14(data, FUNC2(1));

		for (nr = 0; nr < nr_fans; nr++) {
			data->pwm_auto_point_mapping[nr] =
			    FUNC14(data,
					   FUNC5(nr));

			if (data->type != f71862fg) {
				int point;
				for (point = 0; point < 5; point++) {
					data->pwm_auto_point_pwm[nr][point] =
						FUNC14(data,
							FUNC6
							(nr, point));
				}
				for (point = 0; point < 4; point++) {
					data->pwm_auto_point_temp[nr][point] =
						FUNC14(data,
							FUNC7
							(nr, point));
				}
			} else {
				data->pwm_auto_point_pwm[nr][1] =
					FUNC14(data,
						FUNC6
						(nr, 1));
				data->pwm_auto_point_pwm[nr][4] =
					FUNC14(data,
						FUNC6
						(nr, 4));
				data->pwm_auto_point_temp[nr][0] =
					FUNC14(data,
						FUNC7
						(nr, 0));
				data->pwm_auto_point_temp[nr][3] =
					FUNC14(data,
						FUNC7
						(nr, 3));
			}
		}
		data->last_limits = jiffies;
	}

	/* Update every second */
	if (FUNC18(jiffies, data->last_updated + HZ) || !data->valid) {
		data->temp_status = FUNC14(data,
						F71882FG_REG_TEMP_STATUS);
		data->temp_diode_open = FUNC14(data,
						F71882FG_REG_TEMP_DIODE_OPEN);
		for (nr = data->temp_start; nr < 3 + data->temp_start; nr++)
			data->temp[nr] = FUNC15(data, nr);

		data->fan_status = FUNC14(data,
						F71882FG_REG_FAN_STATUS);
		for (nr = 0; nr < nr_fans; nr++) {
			data->fan[nr] = FUNC13(data,
						FUNC0(nr));
			data->fan_target[nr] =
			    FUNC13(data, FUNC3(nr));
			data->fan_full_speed[nr] =
			    FUNC13(data,
					    FUNC1(nr));
			data->pwm[nr] =
			    FUNC14(data, FUNC8(nr));
		}

		/* The f8000 can monitor 1 more fan, but has no pwm for it */
		if (data->type == f8000)
			data->fan[3] = FUNC13(data,
						FUNC0(3));
		if (data->type == f71882fg)
			data->in_status = FUNC14(data,
						F71882FG_REG_IN_STATUS);
		for (nr = 0; nr < nr_ins; nr++)
			data->in[nr] = FUNC14(data,
						FUNC4(nr));

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC17(&data->update_lock);

	return data;
}