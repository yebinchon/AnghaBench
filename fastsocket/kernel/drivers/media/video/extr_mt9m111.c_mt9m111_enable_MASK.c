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
struct mt9m111 {int powered; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT9M111_RESET_CHIP_ENABLE ; 
 int /*<<< orphan*/  RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mt9m111* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC1(client);
	int ret;

	ret = FUNC0(RESET, MT9M111_RESET_CHIP_ENABLE);
	if (!ret)
		mt9m111->powered = 1;
	return ret;
}