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
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  WOL_ST; int /*<<< orphan*/  WOL_CTRL; int /*<<< orphan*/  INT_EN; int /*<<< orphan*/  TCPIP_ACC; int /*<<< orphan*/  WOL_ADDR_MASK; int /*<<< orphan*/  ADDR_MASK; } ;

/* Variables and functions */
 int PCH_GBE_INT_ENABLE_MASK ; 
 int /*<<< orphan*/  PCH_GBE_WLA_BUSY ; 
 int PCH_GBE_WLC_WOL_MODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pch_gbe_hw *hw, u32 wu_evt)
{
	u32 addr_mask;

	FUNC3("wu_evt : 0x%08x  ADDR_MASK reg : 0x%08x\n",
		 wu_evt, FUNC0(&hw->reg->ADDR_MASK));

	if (wu_evt) {
		/* Set Wake-On-Lan address mask */
		addr_mask = FUNC0(&hw->reg->ADDR_MASK);
		FUNC1(addr_mask, &hw->reg->WOL_ADDR_MASK);
		/* wait busy */
		FUNC2(&hw->reg->WOL_ADDR_MASK, PCH_GBE_WLA_BUSY);
		FUNC1(0, &hw->reg->WOL_ST);
		FUNC1((wu_evt | PCH_GBE_WLC_WOL_MODE), &hw->reg->WOL_CTRL);
		FUNC1(0x02, &hw->reg->TCPIP_ACC);
		FUNC1(PCH_GBE_INT_ENABLE_MASK, &hw->reg->INT_EN);
	} else {
		FUNC1(0, &hw->reg->WOL_CTRL);
		FUNC1(0, &hw->reg->WOL_ST);
	}
	return;
}