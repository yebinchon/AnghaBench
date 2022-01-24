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
struct slot {int /*<<< orphan*/  work; } ;
struct controller {struct slot* slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*) ; 
 int /*<<< orphan*/  pciehp_wq ; 

__attribute__((used)) static void FUNC4(struct controller *ctrl)
{
	struct slot *slot = ctrl->slot;
	FUNC0(&slot->work);
	FUNC1();
	FUNC2(pciehp_wq);
	FUNC3(slot);
}