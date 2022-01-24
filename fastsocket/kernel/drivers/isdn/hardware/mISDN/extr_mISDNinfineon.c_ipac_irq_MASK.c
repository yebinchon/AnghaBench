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
typedef  int u8 ;
struct TYPE_2__ {int (* read_reg ) (struct inf_hw*,int /*<<< orphan*/ ) ;} ;
struct inf_hw {int /*<<< orphan*/  lock; TYPE_1__ ipac; int /*<<< orphan*/  irqcnt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPAC_ISTA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  irqloops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inf_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int intno, void *dev_id)
{
	struct inf_hw *hw = dev_id;
	u8 val;

	FUNC1(&hw->lock);
	val = hw->ipac.read_reg(hw, IPAC_ISTA);
	if (!(val & 0x3f)) {
		FUNC2(&hw->lock);
		return IRQ_NONE; /* shared */
	}
	hw->irqcnt++;
	FUNC0(&hw->ipac, irqloops);
	FUNC2(&hw->lock);
	return IRQ_HANDLED;
}