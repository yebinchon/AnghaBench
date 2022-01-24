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
struct f71882fg_data {int* temp_high; int* temp_hyst; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long FUNC2 (long,int,int) ; 
 struct f71882fg_data* FUNC3 (struct device*) ; 
 void* FUNC4 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC3(dev);
	int nr = FUNC9(devattr)->index;
	long val = FUNC8(buf, NULL, 10) / 1000;
	ssize_t ret = count;
	u8 reg;

	FUNC6(&data->update_lock);

	/* convert abs to relative and check */
	data->temp_high[nr] = FUNC4(data, FUNC0(nr));
	val = FUNC2(val, data->temp_high[nr] - 15,
			    data->temp_high[nr]);
	val = data->temp_high[nr] - val;

	/* convert value to register contents */
	reg = FUNC4(data, FUNC1(nr / 2));
	if (nr & 1)
		reg = (reg & 0x0f) | (val << 4);
	else
		reg = (reg & 0xf0) | val;
	FUNC5(data, FUNC1(nr / 2), reg);
	data->temp_hyst[nr / 2] = reg;

	FUNC7(&data->update_lock);
	return ret;
}