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
typedef  int u8 ;
struct fschmd_data {size_t kind; int* fan_ripple; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ ** FSCHMD_REG_FAN_RIPPLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long) ; 
 struct fschmd_data* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	u8 reg;
	int index = FUNC8(devattr)->index;
	struct fschmd_data *data = FUNC1(dev);
	/* supported values: 2, 4, 8 */
	unsigned long v = FUNC6(buf, NULL, 10);

	switch (v) {
	case 2: v = 1; break;
	case 4: v = 2; break;
	case 8: v = 3; break;
	default:
		FUNC0(dev, "fan_div value %lu not supported. "
			"Choose one of 2, 4 or 8!\n", v);
		return -EINVAL;
	}

	FUNC4(&data->update_lock);

	reg = FUNC2(FUNC7(dev),
		FSCHMD_REG_FAN_RIPPLE[data->kind][index]);

	/* bits 2..7 reserved => mask with 0x03 */
	reg &= ~0x03;
	reg |= v;

	FUNC3(FUNC7(dev),
		FSCHMD_REG_FAN_RIPPLE[data->kind][index], reg);

	data->fan_ripple[index] = reg;

	FUNC5(&data->update_lock);

	return count;
}