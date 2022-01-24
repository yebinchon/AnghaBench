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
struct TYPE_2__ {int /*<<< orphan*/  mfc_control_RW; } ;
struct spu_state {TYPE_1__ priv2; } ;
struct spu {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFC_CNTL_RESTART_DMA_COMMAND ; 
 int /*<<< orphan*/  SPU_CONTEXT_FAULT_PENDING ; 
 int /*<<< orphan*/  SPU_CONTEXT_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct spu_state *csa, struct spu *spu)
{
	/* Save, Step 48:
	 * Restore, Step 23.
	 *     Change the software context switch pending flag
	 *     to context switch active.  This implementation does
	 *     not uses a switch active flag.
	 *
	 * Now that we have saved the mfc in the csa, we can add in the
	 * restart command if an exception occurred.
	 */
	if (FUNC2(SPU_CONTEXT_FAULT_PENDING, &spu->flags))
		csa->priv2.mfc_control_RW |= MFC_CNTL_RESTART_DMA_COMMAND;
	FUNC0(SPU_CONTEXT_SWITCH_PENDING, &spu->flags);
	FUNC1();
}