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
struct nic {int /*<<< orphan*/  cmd_lock; TYPE_2__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmd_hi; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nic*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_mask_none ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct nic *nic)
{
	unsigned long flags;

	FUNC2(&nic->cmd_lock, flags);
	FUNC1(irq_mask_none, &nic->csr->scb.cmd_hi);
	FUNC0(nic);
	FUNC3(&nic->cmd_lock, flags);
}