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
typedef  int /*<<< orphan*/  uint8_t ;
struct max732x_chip {struct i2c_client* client_group_b; struct i2c_client* client_group_a; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct max732x_chip *chip, int group_a, uint8_t val)
{
	struct i2c_client *client;
	int ret;

	client = group_a ? chip->client_group_a : chip->client_group_b;
	ret = FUNC1(client, val);
	if (ret < 0) {
		FUNC0(&client->dev, "failed writing\n");
		return ret;
	}

	return 0;
}