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
struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int is_enabled; int /*<<< orphan*/  enable_high; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fixed_voltage_data* FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	struct fixed_voltage_data *data = FUNC2(dev);

	if (FUNC0(data->gpio)) {
		FUNC1(data->gpio, data->enable_high);
		data->is_enabled = 1;
	}

	return 0;
}