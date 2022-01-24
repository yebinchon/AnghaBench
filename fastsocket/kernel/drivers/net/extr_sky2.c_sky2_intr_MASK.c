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
typedef  int /*<<< orphan*/  u32 ;
struct sky2_hw {size_t st_idx; int /*<<< orphan*/  napi; int /*<<< orphan*/ * st_le; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  B0_Y2_SP_ISRC2 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sky2_hw *hw = dev_id;
	u32 status;

	/* Reading this mask interrupts as side effect */
	status = FUNC2(hw, B0_Y2_SP_ISRC2);
	if (status == 0 || status == ~0)
		return IRQ_NONE;

	FUNC1(&hw->st_le[hw->st_idx]);

	FUNC0(&hw->napi);

	return IRQ_HANDLED;
}