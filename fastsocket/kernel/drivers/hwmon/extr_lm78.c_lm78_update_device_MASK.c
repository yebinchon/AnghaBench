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
struct lm78_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int temp; int temp_over; int temp_hyst; int vid; scalar_t__ type; int* fan_div; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  alarms; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM78_REG_ALARM1 ; 
 int /*<<< orphan*/  LM78_REG_ALARM2 ; 
 int /*<<< orphan*/  LM78_REG_CHIPID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  LM78_REG_TEMP ; 
 int /*<<< orphan*/  LM78_REG_TEMP_HYST ; 
 int /*<<< orphan*/  LM78_REG_TEMP_OVER ; 
 int /*<<< orphan*/  LM78_REG_VID_FANDIV ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct lm78_data* FUNC6 (struct device*) ; 
 scalar_t__ jiffies ; 
 int FUNC7 (struct lm78_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ lm79 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct lm78_data *FUNC11(struct device *dev)
{
	struct lm78_data *data = FUNC6(dev);
	int i;

	FUNC8(&data->update_lock);

	if (FUNC10(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {

		FUNC5(dev, "Starting lm78 update\n");

		for (i = 0; i <= 6; i++) {
			data->in[i] =
			    FUNC7(data, FUNC2(i));
			data->in_min[i] =
			    FUNC7(data, FUNC4(i));
			data->in_max[i] =
			    FUNC7(data, FUNC3(i));
		}
		for (i = 0; i < 3; i++) {
			data->fan[i] =
			    FUNC7(data, FUNC0(i));
			data->fan_min[i] =
			    FUNC7(data, FUNC1(i));
		}
		data->temp = FUNC7(data, LM78_REG_TEMP);
		data->temp_over =
		    FUNC7(data, LM78_REG_TEMP_OVER);
		data->temp_hyst =
		    FUNC7(data, LM78_REG_TEMP_HYST);
		i = FUNC7(data, LM78_REG_VID_FANDIV);
		data->vid = i & 0x0f;
		if (data->type == lm79)
			data->vid |=
			    (FUNC7(data, LM78_REG_CHIPID) &
			     0x01) << 4;
		else
			data->vid |= 0x10;
		data->fan_div[0] = (i >> 4) & 0x03;
		data->fan_div[1] = i >> 6;
		data->alarms = FUNC7(data, LM78_REG_ALARM1) +
		    (FUNC7(data, LM78_REG_ALARM2) << 8);
		data->last_updated = jiffies;
		data->valid = 1;

		data->fan_div[2] = 1;
	}

	FUNC9(&data->update_lock);

	return data;
}