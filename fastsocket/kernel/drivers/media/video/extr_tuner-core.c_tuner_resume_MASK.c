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
struct tuner {int /*<<< orphan*/  type; int /*<<< orphan*/  standby; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct tuner*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tuner* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *c)
{
	struct tuner *t = FUNC2(FUNC0(c));

	FUNC3("resume\n");

	if (!t->standby)
		FUNC1(c, t, t->type, 0);

	return 0;
}