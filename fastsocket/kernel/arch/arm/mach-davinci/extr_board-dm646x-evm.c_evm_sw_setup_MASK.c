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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * evm_sw_gpio ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int gpio,
			unsigned ngpio, void *c)
{
	int status;
	int i;
	char label[10];

	for (i = 0; i < 4; ++i) {
		FUNC4(label, 10, "user_sw%d", i);
		status = FUNC3(gpio, label);
		if (status)
			goto out_free;
		evm_sw_gpio[i] = gpio++;

		status = FUNC0(evm_sw_gpio[i]);
		if (status) {
			FUNC2(evm_sw_gpio[i]);
			evm_sw_gpio[i] = -EINVAL;
			goto out_free;
		}

		status = FUNC1(evm_sw_gpio[i], 0);
		if (status) {
			FUNC2(evm_sw_gpio[i]);
			evm_sw_gpio[i] = -EINVAL;
			goto out_free;
		}
	}
	return status;
out_free:
	for (i = 0; i < 4; ++i) {
		if (evm_sw_gpio[i] != -EINVAL) {
			FUNC2(evm_sw_gpio[i]);
			evm_sw_gpio[i] = -EINVAL;
		}
	}
	return status;
}