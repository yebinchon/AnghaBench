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
struct synaptics_i2c {int /*<<< orphan*/  client; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_DATA_SLEEP_MSECS ; 
 struct synaptics_i2c* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ polling_req ; 
 int /*<<< orphan*/  FUNC2 (struct synaptics_i2c*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	struct synaptics_i2c *touch = FUNC0(input);
	int ret;

	ret = FUNC3(touch->client);
	if (ret)
		return ret;

	if (polling_req)
		FUNC2(touch,
				FUNC1(NO_DATA_SLEEP_MSECS));

	return 0;
}