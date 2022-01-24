#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct analog_demod_ops {int /*<<< orphan*/  (* standby ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {TYPE_2__ fe; int /*<<< orphan*/  standby; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct tuner* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *c, pm_message_t state)
{
	struct tuner *t = FUNC2(FUNC0(c));
	struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

	FUNC3("suspend\n");

	if (!t->standby && analog_ops->standby)
		analog_ops->standby(&t->fe);

	return 0;
}