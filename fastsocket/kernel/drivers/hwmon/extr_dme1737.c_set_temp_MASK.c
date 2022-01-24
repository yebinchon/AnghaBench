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
struct dme1737_data {int /*<<< orphan*/  update_lock; void** temp_offset; void** temp_max; void** temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  SYS_TEMP_MAX 130 
#define  SYS_TEMP_MIN 129 
#define  SYS_TEMP_OFFSET 128 
 void* FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dme1737_data*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 long FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute_2* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct dme1737_data *data = FUNC5(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC10(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	long val = FUNC9(buf, NULL, 10);

	FUNC7(&data->update_lock);
	switch (fn) {
	case SYS_TEMP_MIN:
		data->temp_min[ix] = FUNC3(val);
		FUNC6(data, FUNC1(ix),
			      data->temp_min[ix]);
		break;
	case SYS_TEMP_MAX:
		data->temp_max[ix] = FUNC3(val);
		FUNC6(data, FUNC0(ix),
			      data->temp_max[ix]);
		break;
	case SYS_TEMP_OFFSET:
		data->temp_offset[ix] = FUNC3(val);
		FUNC6(data, FUNC2(ix),
			      data->temp_offset[ix]);
		break;
	default:
		FUNC4(dev, "Unknown function %d.\n", fn);
	}
	FUNC8(&data->update_lock);

	return count;
}