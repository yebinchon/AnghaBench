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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ start; } ;
struct inf_hw {int /*<<< orphan*/  lock; int /*<<< orphan*/  ipac; int /*<<< orphan*/  irqcnt; TYPE_1__ cfg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NICCY_IRQ_BIT ; 
 int NICCY_IRQ_CTRL_REG ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  irqloops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC5(int intno, void *dev_id)
{
	struct inf_hw *hw = dev_id;
	u32 val;

	FUNC3(&hw->lock);
	val = FUNC0((u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
	if (!(val & NICCY_IRQ_BIT)) { /* for us or shared ? */
		FUNC4(&hw->lock);
		return IRQ_NONE; /* shared */
	}
	FUNC2(val, (u32)hw->cfg.start + NICCY_IRQ_CTRL_REG);
	hw->irqcnt++;
	FUNC1(&hw->ipac, irqloops);
	FUNC4(&hw->lock);
	return IRQ_HANDLED;
}