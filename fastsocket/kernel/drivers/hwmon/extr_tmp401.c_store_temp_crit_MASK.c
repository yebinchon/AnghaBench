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
struct tmp401_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_crit; int /*<<< orphan*/  config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ * TMP401_TEMP_CRIT_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ ) ; 
 struct tmp401_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	int index = FUNC7(devattr)->index;
	struct tmp401_data *data = FUNC5(dev);
	long val;
	u8 reg;

	if (FUNC3(buf, 10, &val))
		return -EINVAL;

	reg = FUNC4(val, data->config);

	FUNC1(&data->update_lock);

	FUNC0(FUNC6(dev),
		TMP401_TEMP_CRIT_LIMIT[index], reg);

	data->temp_crit[index] = reg;

	FUNC2(&data->update_lock);

	return count;
}