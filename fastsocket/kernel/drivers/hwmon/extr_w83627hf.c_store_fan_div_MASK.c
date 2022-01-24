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
struct w83627hf_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  W83781D_REG_PIN ; 
 int /*<<< orphan*/  W83781D_REG_VBAT ; 
 int /*<<< orphan*/  W83781D_REG_VID_FANDIV ; 
 struct w83627hf_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *devattr,
	      const char *buf, size_t count)
{
	int nr = FUNC9(devattr)->index;
	struct w83627hf_data *data = FUNC5(dev);
	unsigned long min;
	u8 reg;
	unsigned long val = FUNC8(buf, NULL, 10);

	FUNC6(&data->update_lock);

	/* Save fan_min */
	min = FUNC2(data->fan_min[nr],
			   FUNC0(data->fan_div[nr]));

	data->fan_div[nr] = FUNC1(val);

	reg = (FUNC10(data, nr==2 ? W83781D_REG_PIN : W83781D_REG_VID_FANDIV)
	       & (nr==0 ? 0xcf : 0x3f))
	    | ((data->fan_div[nr] & 0x03) << (nr==0 ? 4 : 6));
	FUNC11(data, nr==2 ? W83781D_REG_PIN : W83781D_REG_VID_FANDIV, reg);

	reg = (FUNC10(data, W83781D_REG_VBAT)
	       & ~(1 << (5 + nr)))
	    | ((data->fan_div[nr] & 0x04) << (3 + nr));
	FUNC11(data, W83781D_REG_VBAT, reg);

	/* Restore fan_min */
	data->fan_min[nr] = FUNC3(min, FUNC0(data->fan_div[nr]));
	FUNC11(data, FUNC4(nr), data->fan_min[nr]);

	FUNC7(&data->update_lock);
	return count;
}