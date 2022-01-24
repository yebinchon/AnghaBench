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
struct mt9m111 {int /*<<< orphan*/  autoexposure; int /*<<< orphan*/  context; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIGHPOWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct mt9m111* FUNC5 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC5(client);
	int ret;

	mt9m111->context = HIGHPOWER;
	ret = FUNC1(client);
	if (!ret)
		ret = FUNC2(client);
	if (!ret)
		ret = FUNC4(client, mt9m111->context);
	if (!ret)
		ret = FUNC3(client, mt9m111->autoexposure);
	if (ret)
		FUNC0(&client->dev, "mt9m111 init failed: %d\n", ret);
	return ret;
}