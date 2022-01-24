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
struct i2c_client {int dummy; } ;
struct asb100_data {int /*<<< orphan*/  vrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_CONFIG ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct asb100_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct asb100_data *data = FUNC2(client);

	data->vrm = FUNC3();

	/* Start monitoring */
	FUNC1(client, ASB100_REG_CONFIG,
		(FUNC0(client, ASB100_REG_CONFIG) & 0xf7) | 0x01);
}