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
typedef  int /*<<< orphan*/  u8 ;
struct lm93_data {int /*<<< orphan*/  block10; int /*<<< orphan*/  block1; scalar_t__ block9; scalar_t__ block8; scalar_t__ block5; scalar_t__ block4; scalar_t__ block2; scalar_t__ block7; scalar_t__ block3; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lm93_data*,struct i2c_client*) ; 

__attribute__((used)) static void FUNC3(struct lm93_data *data,
				    struct i2c_client *client)
{
	FUNC0(&client->dev,"starting device update (block data enabled)\n");

	/* in1 - in16: values & limits */
	FUNC1(client, 3, (u8 *)(data->block3));
	FUNC1(client, 7, (u8 *)(data->block7));

	/* temp1 - temp4: values */
	FUNC1(client, 2, (u8 *)(data->block2));

	/* prochot1 - prochot2: values */
	FUNC1(client, 4, (u8 *)(data->block4));

	/* fan1 - fan4: values & limits */
	FUNC1(client, 5, (u8 *)(data->block5));
	FUNC1(client, 8, (u8 *)(data->block8));

	/* pmw control registers */
	FUNC1(client, 9, (u8 *)(data->block9));

	/* alarm values */
	FUNC1(client, 1, (u8 *)(&data->block1));

	/* auto/pwm registers */
	FUNC1(client, 10, (u8 *)(&data->block10));

	FUNC2(data, client);
}