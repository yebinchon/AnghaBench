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
struct lm78_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  temp_over; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM78_REG_TEMP_OVER ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 struct lm78_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct lm78_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *da,
			     const char *buf, size_t count)
{
	struct lm78_data *data = FUNC1(dev);
	long val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->temp_over = FUNC0(val);
	FUNC2(data, LM78_REG_TEMP_OVER, data->temp_over);
	FUNC4(&data->update_lock);
	return count;
}