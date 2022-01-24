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
struct sh_mobile_i2c_data {scalar_t__ pos; TYPE_1__* msg; } ;
struct TYPE_2__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_TX ; 
 int /*<<< orphan*/  OP_TX_FIRST ; 
 int /*<<< orphan*/  OP_TX_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*,unsigned char*) ; 
 scalar_t__ FUNC2 (struct sh_mobile_i2c_data*) ; 
 scalar_t__ FUNC3 (struct sh_mobile_i2c_data*) ; 

__attribute__((used)) static int FUNC4(struct sh_mobile_i2c_data *pd)
{
	unsigned char data;

	if (pd->pos == pd->msg->len)
		return 1;

	FUNC1(pd, &data);

	if (FUNC3(pd))
		FUNC0(pd, OP_TX_STOP, data);
	else if (FUNC2(pd))
		FUNC0(pd, OP_TX_FIRST, data);
	else
		FUNC0(pd, OP_TX, data);

	pd->pos++;
	return 0;
}