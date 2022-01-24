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
struct iwl_trans_pcie {int use_ict; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	unsigned long flags;

	FUNC1(&trans_pcie->irq_lock, flags);
	trans_pcie->use_ict = false;
	FUNC2(&trans_pcie->irq_lock, flags);
}