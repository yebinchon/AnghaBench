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
struct regulator_dev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int MAX1586_V6 ; 
 struct regulator_dev** FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev**) ; 
 int /*<<< orphan*/  FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct regulator_dev **rdev = FUNC0(client);
	int i;

	for (i = 0; i <= MAX1586_V6; i++)
		if (rdev[i])
			FUNC3(rdev[i]);
	FUNC2(rdev);
	FUNC1(client, NULL);

	return 0;
}