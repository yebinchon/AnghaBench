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
struct sky2_hw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Q_R1 ; 
 int /*<<< orphan*/  Q_R2 ; 
 int /*<<< orphan*/  Q_XA1 ; 
 int /*<<< orphan*/  Q_XA2 ; 
 int Y2_IS_CHK_RX1 ; 
 int Y2_IS_CHK_RX2 ; 
 int Y2_IS_CHK_TXA1 ; 
 int Y2_IS_CHK_TXA2 ; 
 int Y2_IS_HW_ERR ; 
 int Y2_IS_IRQ_MAC1 ; 
 int Y2_IS_IRQ_MAC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int) ; 

__attribute__((used)) static void FUNC5(struct sky2_hw *hw, u32 status)
{
	if (FUNC1())
		FUNC0(&hw->pdev->dev, "error interrupt status=%#x\n", status);

	if (status & Y2_IS_HW_ERR)
		FUNC2(hw);

	if (status & Y2_IS_IRQ_MAC1)
		FUNC4(hw, 0);

	if (status & Y2_IS_IRQ_MAC2)
		FUNC4(hw, 1);

	if (status & Y2_IS_CHK_RX1)
		FUNC3(hw, 0, Q_R1);

	if (status & Y2_IS_CHK_RX2)
		FUNC3(hw, 1, Q_R2);

	if (status & Y2_IS_CHK_TXA1)
		FUNC3(hw, 0, Q_XA1);

	if (status & Y2_IS_CHK_TXA2)
		FUNC3(hw, 1, Q_XA2);
}