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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int /*<<< orphan*/  update_lock; void** zone_abs; void** pwm_freq; void** zone_low; void** zone_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  SYS_ZONE_AUTO_POINT1_TEMP 131 
#define  SYS_ZONE_AUTO_POINT1_TEMP_HYST 130 
#define  SYS_ZONE_AUTO_POINT2_TEMP 129 
#define  SYS_ZONE_AUTO_POINT3_TEMP 128 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC9 (struct device*) ; 
 void* FUNC10 (struct dme1737_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dme1737_data*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 long FUNC14 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC15 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC16(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct dme1737_data *data = FUNC9(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC15(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val = FUNC14(buf, NULL, 10);

	FUNC12(&data->update_lock);
	switch (fn) {
	case SYS_ZONE_AUTO_POINT1_TEMP_HYST:
		/* Refresh the cache */
		data->zone_low[ix] = FUNC10(data,
						  FUNC3(ix));
		/* Modify the temp hyst value */
		data->zone_hyst[ix == 2] = FUNC5(
					FUNC4(data->zone_low[ix], 8) -
					val, ix, FUNC10(data,
					FUNC2(ix == 2)));
		FUNC11(data, FUNC2(ix == 2),
			      data->zone_hyst[ix == 2]);
		break;
	case SYS_ZONE_AUTO_POINT1_TEMP:
		data->zone_low[ix] = FUNC7(val);
		FUNC11(data, FUNC3(ix),
			      data->zone_low[ix]);
		break;
	case SYS_ZONE_AUTO_POINT2_TEMP:
		/* Refresh the cache */
		data->zone_low[ix] = FUNC10(data,
						  FUNC3(ix));
		/* Modify the temp range value (which is stored in the upper
		 * nibble of the pwm_freq register) */
		data->pwm_freq[ix] = FUNC6(val -
					FUNC4(data->zone_low[ix], 8),
					FUNC10(data,
					FUNC0(ix)));
		FUNC11(data, FUNC0(ix),
			      data->pwm_freq[ix]);
		break;
	case SYS_ZONE_AUTO_POINT3_TEMP:
		data->zone_abs[ix] = FUNC7(val);
		FUNC11(data, FUNC1(ix),
			      data->zone_abs[ix]);
		break;
	default:
		FUNC8(dev, "Unknown function %d.\n", fn);
	}
	FUNC13(&data->update_lock);

	return count;
}