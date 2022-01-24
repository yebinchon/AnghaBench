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
struct cx88_core {struct cx88_IR* ir; } ;
struct cx88_IR {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_IR*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct cx88_core *core)
{
	struct cx88_IR *ir = core->ir;

	/* skip detach on non attached boards */
	if (NULL == ir)
		return 0;

	FUNC0(core);
	FUNC2(ir->dev);
	FUNC1(ir);

	/* done */
	core->ir = NULL;
	return 0;
}