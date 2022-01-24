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
struct regval_list {int reg_num; int /*<<< orphan*/  value; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct i2c_client        *client,
			      const struct regval_list *vals)
{
	while (vals->reg_num != 0xff) {
		int ret = FUNC0(client,
						    vals->reg_num,
						    vals->value);
		if (ret < 0)
			return ret;
		vals++;
	}
	return 0;
}