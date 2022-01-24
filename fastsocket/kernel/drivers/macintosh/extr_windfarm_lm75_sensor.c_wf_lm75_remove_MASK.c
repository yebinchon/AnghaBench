#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct wf_lm75_sensor {TYPE_1__ sens; int /*<<< orphan*/ * i2c; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct wf_lm75_sensor* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct wf_lm75_sensor *lm = FUNC1(client);

	FUNC0("wf_lm75: i2c detatch called for %s\n", lm->sens.name);

	/* Mark client detached */
	lm->i2c = NULL;

	/* release sensor */
	FUNC3(&lm->sens);

	FUNC2(client, NULL);
	return 0;
}