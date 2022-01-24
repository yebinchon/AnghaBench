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
typedef  int u32 ;
struct w83627hf_data {int* sens; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int* BIT_SCFG1 ; 
 int* BIT_SCFG2 ; 
#define  W83781D_DEFAULT_BETA 128 
 int /*<<< orphan*/  W83781D_REG_SCFG1 ; 
 int /*<<< orphan*/  W83781D_REG_SCFG2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,long) ; 
 struct w83627hf_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *devattr,
		const char *buf, size_t count)
{
	int nr = FUNC6(devattr)->index;
	struct w83627hf_data *data = FUNC1(dev);
	u32 val, tmp;

	val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);

	switch (val) {
	case 1:		/* PII/Celeron diode */
		tmp = FUNC7(data, W83781D_REG_SCFG1);
		FUNC8(data, W83781D_REG_SCFG1,
				    tmp | BIT_SCFG1[nr]);
		tmp = FUNC7(data, W83781D_REG_SCFG2);
		FUNC8(data, W83781D_REG_SCFG2,
				    tmp | BIT_SCFG2[nr]);
		data->sens[nr] = val;
		break;
	case 2:		/* 3904 */
		tmp = FUNC7(data, W83781D_REG_SCFG1);
		FUNC8(data, W83781D_REG_SCFG1,
				    tmp | BIT_SCFG1[nr]);
		tmp = FUNC7(data, W83781D_REG_SCFG2);
		FUNC8(data, W83781D_REG_SCFG2,
				    tmp & ~BIT_SCFG2[nr]);
		data->sens[nr] = val;
		break;
	case W83781D_DEFAULT_BETA:
		FUNC2(dev, "Sensor type %d is deprecated, please use 4 "
			 "instead\n", W83781D_DEFAULT_BETA);
		/* fall through */
	case 4:		/* thermistor */
		tmp = FUNC7(data, W83781D_REG_SCFG1);
		FUNC8(data, W83781D_REG_SCFG1,
				    tmp & ~BIT_SCFG1[nr]);
		data->sens[nr] = val;
		break;
	default:
		FUNC0(dev,
		       "Invalid sensor type %ld; must be 1, 2, or 4\n",
		       (long) val);
		break;
	}

	FUNC4(&data->update_lock);
	return count;
}