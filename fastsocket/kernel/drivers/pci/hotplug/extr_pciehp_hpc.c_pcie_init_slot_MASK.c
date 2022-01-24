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
struct slot {int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct controller* ctrl; } ;
struct controller {struct slot* slot; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct slot* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pciehp_queue_pushbutton_work ; 

__attribute__((used)) static int FUNC3(struct controller *ctrl)
{
	struct slot *slot;

	slot = FUNC1(sizeof(*slot), GFP_KERNEL);
	if (!slot)
		return -ENOMEM;

	slot->ctrl = ctrl;
	FUNC2(&slot->lock);
	FUNC0(&slot->work, pciehp_queue_pushbutton_work);
	ctrl->slot = slot;
	return 0;
}