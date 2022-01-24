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
struct pca9532_led {int state; int /*<<< orphan*/  id; struct i2c_client* client; } ;
struct pca9532_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pca9532_data* FUNC2 (struct i2c_client*) ; 
 char FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pca9532_led *led)
{
	struct i2c_client *client = led->client;
	struct pca9532_data *data = FUNC2(client);
	char reg;

	FUNC5(&data->update_lock);
	reg = FUNC3(client, FUNC1(led->id));
	/* zero led bits */
	reg = reg & ~(0x3<<FUNC0(led->id)*2);
	/* set the new value */
	reg = reg | (led->state << FUNC0(led->id)*2);
	FUNC4(client, FUNC1(led->id), reg);
	FUNC6(&data->update_lock);
}