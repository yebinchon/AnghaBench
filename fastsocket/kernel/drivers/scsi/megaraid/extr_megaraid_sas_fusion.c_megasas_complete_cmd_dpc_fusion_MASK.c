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
typedef  int u32 ;
struct megasas_instance {scalar_t__ msix_vectors; scalar_t__ adprecovery; int /*<<< orphan*/  hba_lock; } ;

/* Variables and functions */
 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct megasas_instance*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC3(unsigned long instance_addr)
{
	struct megasas_instance *instance =
		(struct megasas_instance *)instance_addr;
	unsigned long flags;
	u32 count, MSIxIndex;

	count = instance->msix_vectors > 0 ? instance->msix_vectors : 1;

	/* If we have already declared adapter dead, donot complete cmds */
	FUNC1(&instance->hba_lock, flags);
	if (instance->adprecovery == MEGASAS_HW_CRITICAL_ERROR) {
		FUNC2(&instance->hba_lock, flags);
		return;
	}
	FUNC2(&instance->hba_lock, flags);

	for (MSIxIndex = 0 ; MSIxIndex < count; MSIxIndex++)
		FUNC0(instance, MSIxIndex);
}