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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,char*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			       unsigned gpio_base, unsigned ngpio,
			       void *context)
{
	static int acs5k_gpio_value[] = {
		-1, -1, -1, -1, -1, -1, -1, 0, 1, 1, -1, 0, 1, 0, -1, -1
	};
	int n;

	for (n = 0; n < FUNC0(acs5k_gpio_value); ++n) {
		FUNC4(gpio_base + n, "ACS-5000 GPIO Expander");
		if (acs5k_gpio_value[n] < 0)
			FUNC1(gpio_base + n);
		else
			FUNC2(gpio_base + n,
					      acs5k_gpio_value[n]);
		FUNC3(gpio_base + n, 0); /* Export, direction locked down */
	}

	return 0;
}