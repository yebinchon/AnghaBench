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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADT7473_CFG1_READY ; 
 int ADT7473_CFG1_START ; 
 int /*<<< orphan*/  ADT7473_REG_CFG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	int reg = FUNC1(client, ADT7473_REG_CFG1);

	if (!(reg & ADT7473_CFG1_READY)) {
		FUNC0(&client->dev, "Chip not ready.\n");
	} else {
		/* start monitoring */
		FUNC2(client, ADT7473_REG_CFG1,
					  reg | ADT7473_CFG1_START);
	}
}