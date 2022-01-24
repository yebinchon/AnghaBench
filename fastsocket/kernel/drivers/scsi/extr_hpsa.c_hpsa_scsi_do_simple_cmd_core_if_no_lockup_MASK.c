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
struct ctlr_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  lockup_detected; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  CommandStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_HARDWARE_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h,
	struct CommandList *c)
{
	unsigned long flags;

	/* If controller lockup detected, fake a hardware error. */
	FUNC1(&h->lock, flags);
	if (FUNC3(h->lockup_detected)) {
		FUNC2(&h->lock, flags);
		c->err_info->CommandStatus = CMD_HARDWARE_ERR;
	} else {
		FUNC2(&h->lock, flags);
		FUNC0(h, c);
	}
}