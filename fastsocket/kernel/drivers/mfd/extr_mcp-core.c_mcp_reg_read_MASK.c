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
struct mcp {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned int (* reg_read ) (struct mcp*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC2 (struct mcp*,unsigned int) ; 

unsigned int FUNC3(struct mcp *mcp, unsigned int reg)
{
	unsigned long flags;
	unsigned int val;

	FUNC0(&mcp->lock, flags);
	val = mcp->ops->reg_read(mcp, reg);
	FUNC1(&mcp->lock, flags);

	return val;
}