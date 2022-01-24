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
struct pca9532_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * psc; int /*<<< orphan*/ * pwm; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pca9532_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int pwm)
{
	struct pca9532_data *data = FUNC2(client);
	FUNC4(&data->update_lock);
	FUNC3(client, FUNC1(pwm),
		data->pwm[pwm]);
	FUNC3(client, FUNC0(pwm),
		data->psc[pwm]);
	FUNC5(&data->update_lock);
	return 0;
}