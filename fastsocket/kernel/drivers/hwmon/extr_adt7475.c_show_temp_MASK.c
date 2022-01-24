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
struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** temp; int config5; int alarms; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int s8 ;

/* Variables and functions */
#define  ALARM 131 
 int CONFIG5_TEMPOFFSET ; 
#define  FAULT 130 
#define  HYSTERSIS 129 
#define  OFFSET 128 
 size_t THERM ; 
 struct adt7475_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct adt7475_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct adt7475_data *data = FUNC0(dev);
	struct sensor_device_attribute_2 *sattr = FUNC5(attr);
	int out;

	switch (sattr->nr) {
	case HYSTERSIS:
		FUNC1(&data->lock);
		out = data->temp[sattr->nr][sattr->index];
		if (sattr->index != 1)
			out = (out >> 4) & 0xF;
		else
			out = (out & 0xF);
		/* Show the value as an absolute number tied to
		 * THERM */
		out = FUNC3(data, data->temp[THERM][sattr->index]) -
			out * 1000;
		FUNC2(&data->lock);
		break;

	case OFFSET:
		/* Offset is always 2's complement, regardless of the
		 * setting in CONFIG5 */
		FUNC1(&data->lock);
		out = (s8)data->temp[sattr->nr][sattr->index];
		if (data->config5 & CONFIG5_TEMPOFFSET)
			out *= 1000;
		else
			out *= 500;
		FUNC2(&data->lock);
		break;

	case ALARM:
		out = (data->alarms >> (sattr->index + 4)) & 1;
		break;

	case FAULT:
		/* Note - only for remote1 and remote2 */
		out = !!(data->alarms & (sattr->index ? 0x8000 : 0x4000));
		break;

	default:
		/* All other temp values are in the configured format */
		out = FUNC3(data, data->temp[sattr->nr][sattr->index]);
	}

	return FUNC4(buf, "%d\n", out);
}