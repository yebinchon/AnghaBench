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
struct synaptics_i2c {int /*<<< orphan*/  client; int /*<<< orphan*/  dwork; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEEP_SLEEP ; 
 int /*<<< orphan*/  DEV_CONTROL_REG ; 
 int /*<<< orphan*/  INTERRUPT_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct synaptics_i2c* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  polling_req ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input)
{
	struct synaptics_i2c *touch = FUNC1(input);

	if (!polling_req)
		FUNC2(touch->client, INTERRUPT_EN_REG, 0);

	FUNC0(&touch->dwork);

	/* Save some power */
	FUNC2(touch->client, DEV_CONTROL_REG, DEEP_SLEEP);
}