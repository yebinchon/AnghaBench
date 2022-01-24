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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_DPMCS ; 
 int IXGBE_DPMCS_ARBDIS ; 
 int IXGBE_DPMCS_MTSOS_SHIFT ; 
 int IXGBE_DPMCS_TSOEF ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int IXGBE_TDTQ2TCCR_BWG_SHIFT ; 
 int IXGBE_TDTQ2TCCR_GSP ; 
 int IXGBE_TDTQ2TCCR_LSP ; 
 int IXGBE_TDTQ2TCCR_MCL_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 size_t MAX_TRAFFIC_CLASS ; 
 size_t prio_group ; 
 size_t prio_link ; 

s32 FUNC3(struct ixgbe_hw *hw,
						u16 *refill,
						u16 *max,
						u8 *bwg_id,
						u8 *prio_type)
{
	u32    reg, max_credits;
	u8     i;

	reg = FUNC0(hw, IXGBE_DPMCS);

	/* Enable arbiter */
	reg &= ~IXGBE_DPMCS_ARBDIS;
	reg |= IXGBE_DPMCS_TSOEF;

	/* Configure Max TSO packet size 34KB including payload and headers */
	reg |= (0x4 << IXGBE_DPMCS_MTSOS_SHIFT);

	FUNC2(hw, IXGBE_DPMCS, reg);

	/* Configure traffic class credits and priority */
	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
		max_credits = max[i];
		reg = max_credits << IXGBE_TDTQ2TCCR_MCL_SHIFT;
		reg |= refill[i];
		reg |= (u32)(bwg_id[i]) << IXGBE_TDTQ2TCCR_BWG_SHIFT;

		if (prio_type[i] == prio_group)
			reg |= IXGBE_TDTQ2TCCR_GSP;

		if (prio_type[i] == prio_link)
			reg |= IXGBE_TDTQ2TCCR_LSP;

		FUNC2(hw, FUNC1(i), reg);
	}

	return 0;
}