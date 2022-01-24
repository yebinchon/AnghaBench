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
typedef  int /*<<< orphan*/  u8 ;
struct fschmd_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  global_control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FSCHMD_CONTROL_ALERT_LED ; 
 int /*<<< orphan*/  FSCHMD_REG_CONTROL ; 
 struct fschmd_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
	struct device_attribute *devattr, const char *buf, size_t count)
{
	u8 reg;
	struct fschmd_data *data = FUNC0(dev);
	unsigned long v = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);

	reg = FUNC1(FUNC6(dev), FSCHMD_REG_CONTROL);

	if (v)
		reg |= FSCHMD_CONTROL_ALERT_LED;
	else
		reg &= ~FSCHMD_CONTROL_ALERT_LED;

	FUNC2(FUNC6(dev), FSCHMD_REG_CONTROL, reg);

	data->global_control = reg;

	FUNC4(&data->update_lock);

	return count;
}