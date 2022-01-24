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
typedef  int u32 ;
struct w83627hf_data {int vrm_ovt; scalar_t__ type; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w83627hf_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct w83627hf_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ w83627thf ; 
 scalar_t__ w83637hf ; 
 scalar_t__ w83687thf ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
	const char *buf, size_t count)
{
	struct w83627hf_data *data = FUNC3(dev);
	u32 val;

	val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);

	if ((data->vrm_ovt & 0x01) &&
		(w83627thf == data->type || w83637hf == data->type
		 || w83687thf == data->type))
		
		/* use VRM9 calculation */
		data->in_max[0] =
			FUNC1(((val * 100) - 70000 + 244) / 488, 0,
					255);
	else
		/* use VRM8 (standard) calculation */
		data->in_max[0] = FUNC0(val);

	FUNC7(data, FUNC2(0), data->in_max[0]);
	FUNC5(&data->update_lock);
	return count;
}