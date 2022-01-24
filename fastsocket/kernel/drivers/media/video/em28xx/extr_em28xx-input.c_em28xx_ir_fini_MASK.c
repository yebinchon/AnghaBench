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
struct em28xx_IR {int /*<<< orphan*/  rc; } ;
struct em28xx {struct em28xx_IR* ir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct em28xx_IR*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct em28xx *dev)
{
	struct em28xx_IR *ir = dev->ir;

	/* skip detach on non attached boards */
	if (!ir)
		return 0;

	FUNC0(ir->rc);
	FUNC2(ir->rc);
	FUNC1(ir);

	/* done */
	dev->ir = NULL;
	return 0;
}