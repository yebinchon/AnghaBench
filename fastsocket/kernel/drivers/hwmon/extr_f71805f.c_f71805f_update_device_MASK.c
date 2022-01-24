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
struct f71805f_data {int valid; int has_in; int* in_high; int* in_low; int* pwm_freq; int* temp_high; int* temp_hyst; int temp_mode; int* in; int* fan_ctrl; int* pwm; int* temp; int /*<<< orphan*/  update_lock; void* last_updated; scalar_t__ alarms; void** fan; void* last_limits; TYPE_1__* auto_points; void** fan_target; void** fan_low; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int* temp; void** fan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  F71805F_REG_TEMP_MODE ; 
 int HZ ; 
 struct f71805f_data* FUNC15 (struct device*) ; 
 void* FUNC16 (struct f71805f_data*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct f71805f_data*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (void*,void*) ; 

__attribute__((used)) static struct f71805f_data *FUNC21(struct device *dev)
{
	struct f71805f_data *data = FUNC15(dev);
	int nr, apnr;

	FUNC18(&data->update_lock);

	/* Limit registers cache is refreshed after 60 seconds */
	if (FUNC20(jiffies, data->last_updated + 60 * HZ)
	 || !data->valid) {
		for (nr = 0; nr < 11; nr++) {
			if (!(data->has_in & (1 << nr)))
				continue;
			data->in_high[nr] = FUNC17(data,
					    FUNC5(nr));
			data->in_low[nr] = FUNC17(data,
					   FUNC6(nr));
		}
		for (nr = 0; nr < 3; nr++) {
			data->fan_low[nr] = FUNC16(data,
					    FUNC2(nr));
			data->fan_target[nr] = FUNC16(data,
					       FUNC3(nr));
			data->pwm_freq[nr] = FUNC17(data,
					     FUNC10(nr));
		}
		for (nr = 0; nr < 3; nr++) {
			data->temp_high[nr] = FUNC17(data,
					      FUNC13(nr));
			data->temp_hyst[nr] = FUNC17(data,
					      FUNC14(nr));
		}
		data->temp_mode = FUNC17(data, F71805F_REG_TEMP_MODE);
		for (nr = 0; nr < 3; nr++) {
			for (apnr = 0; apnr < 3; apnr++) {
				data->auto_points[nr].temp[apnr] =
					FUNC17(data,
					FUNC8(nr,
									apnr));
				data->auto_points[nr].fan[apnr] =
					FUNC16(data,
					FUNC7(nr,
								       apnr));
			}
		}

		data->last_limits = jiffies;
	}

	/* Measurement registers cache is refreshed after 1 second */
	if (FUNC20(jiffies, data->last_updated + HZ)
	 || !data->valid) {
		for (nr = 0; nr < 11; nr++) {
			if (!(data->has_in & (1 << nr)))
				continue;
			data->in[nr] = FUNC17(data,
				       FUNC4(nr));
		}
		for (nr = 0; nr < 3; nr++) {
			data->fan[nr] = FUNC16(data,
					FUNC0(nr));
			data->fan_ctrl[nr] = FUNC17(data,
					     FUNC1(nr));
			data->pwm[nr] = FUNC17(data,
					FUNC9(nr));
		}
		for (nr = 0; nr < 3; nr++) {
			data->temp[nr] = FUNC17(data,
					 FUNC12(nr));
		}
		data->alarms = FUNC17(data, FUNC11(0))
			+ (FUNC17(data, FUNC11(1)) << 8)
			+ (FUNC17(data, FUNC11(2)) << 16);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC19(&data->update_lock);

	return data;
}