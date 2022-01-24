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
struct device {int dummy; } ;
struct adt7475_data {int valid; int alarms; int** voltage; int** temp; int** pwm; int config5; int* range; int /*<<< orphan*/  lock; void* limits_updated; void*** tach; void* measure_updated; } ;

/* Variables and functions */
 int ADT7475_PWM_COUNT ; 
 int ADT7475_TACH_COUNT ; 
 int ADT7475_TEMP_COUNT ; 
 int ADT7475_VOLTAGE_COUNT ; 
 size_t AUTOMIN ; 
 int HZ ; 
 size_t INPUT ; 
 size_t MAX ; 
 size_t MIN ; 
 size_t OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  REG_CONFIG5 ; 
 int /*<<< orphan*/  REG_EXTEND1 ; 
 int /*<<< orphan*/  REG_EXTEND2 ; 
 int /*<<< orphan*/  REG_STATUS1 ; 
 int /*<<< orphan*/  REG_STATUS2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 size_t THERM ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_client*,int) ; 
 void* FUNC18 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC19 (struct i2c_client*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (void*,void*) ; 
 struct i2c_client* FUNC23 (struct device*) ; 

__attribute__((used)) static struct adt7475_data *FUNC24(struct device *dev)
{
	struct i2c_client *client = FUNC23(dev);
	struct adt7475_data *data = FUNC19(client);
	u8 ext;
	int i;

	FUNC20(&data->lock);

	/* Measurement values update every 2 seconds */
	if (FUNC22(jiffies, data->measure_updated + HZ * 2) ||
	    !data->valid) {
		data->alarms = FUNC15(REG_STATUS2) << 8;
		data->alarms |= FUNC15(REG_STATUS1);

		ext = FUNC15(REG_EXTEND1);
		for (i = 0; i < ADT7475_VOLTAGE_COUNT; i++)
			data->voltage[INPUT][i] =
				(FUNC15(FUNC14(i)) << 2) |
				((ext >> ((i + 1) * 2)) & 3);

		ext = FUNC15(REG_EXTEND2);
		for (i = 0; i < ADT7475_TEMP_COUNT; i++)
			data->temp[INPUT][i] =
				(FUNC15(FUNC8(i)) << 2) |
				((ext >> ((i + 1) * 2)) & 3);

		for (i = 0; i < ADT7475_TACH_COUNT; i++)
			data->tach[INPUT][i] =
				FUNC18(client, FUNC4(i));

		/* Updated by hw when in auto mode */
		for (i = 0; i < ADT7475_PWM_COUNT; i++)
			data->pwm[INPUT][i] = FUNC15(FUNC2(i));

		data->measure_updated = jiffies;
	}

	/* Limits and settings, should never change update every 60 seconds */
	if (FUNC22(jiffies, data->limits_updated + HZ * 60) ||
	    !data->valid) {
		data->config5 = FUNC15(REG_CONFIG5);

		for (i = 0; i < ADT7475_VOLTAGE_COUNT; i++) {
			/* Adjust values so they match the input precision */
			data->voltage[MIN][i] =
				FUNC15(FUNC13(i)) << 2;
			data->voltage[MAX][i] =
				FUNC15(FUNC12(i)) << 2;
		}

		for (i = 0; i < ADT7475_TEMP_COUNT; i++) {
			/* Adjust values so they match the input precision */
			data->temp[MIN][i] =
				FUNC15(FUNC6(i)) << 2;
			data->temp[MAX][i] =
				FUNC15(FUNC5(i)) << 2;
			data->temp[AUTOMIN][i] =
				FUNC15(FUNC10(i)) << 2;
			data->temp[THERM][i] =
				FUNC15(FUNC9(i)) << 2;
			data->temp[OFFSET][i] =
				FUNC15(FUNC7(i));
		}
		FUNC16(client);

		for (i = 0; i < ADT7475_TACH_COUNT; i++)
			data->tach[MIN][i] =
				FUNC18(client, FUNC3(i));

		for (i = 0; i < ADT7475_PWM_COUNT; i++) {
			data->pwm[MAX][i] = FUNC15(FUNC0(i));
			data->pwm[MIN][i] = FUNC15(FUNC1(i));
			/* Set the channel and control information */
			FUNC17(client, i);
		}

		data->range[0] = FUNC15(FUNC11(0));
		data->range[1] = FUNC15(FUNC11(1));
		data->range[2] = FUNC15(FUNC11(2));

		data->limits_updated = jiffies;
		data->valid = 1;
	}

	FUNC21(&data->lock);

	return data;
}