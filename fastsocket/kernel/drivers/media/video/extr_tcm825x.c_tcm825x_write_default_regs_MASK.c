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
struct tcm825x_reg {scalar_t__ reg; scalar_t__ val; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ TCM825X_REG_TERM ; 
 scalar_t__ TCM825X_VAL_TERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
				      const struct tcm825x_reg *reglist)
{
	int err;
	const struct tcm825x_reg *next = reglist;

	while (!((next->reg == TCM825X_REG_TERM)
		 && (next->val == TCM825X_VAL_TERM))) {
		err = FUNC1(client, next->reg, next->val);
		if (err) {
			FUNC0(&client->dev, "register writing failed\n");
			return err;
		}
		next++;
	}

	return 0;
}