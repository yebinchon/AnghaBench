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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_AUTOC ; 
 scalar_t__ IXGBE_AUTOC_AN_RESTART ; 
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN ; 
 scalar_t__ IXGBE_AUTOC_LMS_KX4_AN_1G_AN ; 
 scalar_t__ IXGBE_AUTOC_LMS_MASK ; 
 scalar_t__ IXGBE_AUTO_NEG_TIME ; 
 int /*<<< orphan*/  IXGBE_ERR_AUTONEG_NOT_COMPLETE ; 
 int /*<<< orphan*/  IXGBE_LINKS ; 
 scalar_t__ IXGBE_LINKS_KX_AN_COMP ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw,
                                      bool autoneg_wait_to_complete)
{
	u32 autoc_reg;
	u32 links_reg;
	u32 i;
	s32 status = 0;

	/* Restart link */
	autoc_reg = FUNC0(hw, IXGBE_AUTOC);
	autoc_reg |= IXGBE_AUTOC_AN_RESTART;
	FUNC1(hw, IXGBE_AUTOC, autoc_reg);

	/* Only poll for autoneg to complete if specified to do so */
	if (autoneg_wait_to_complete) {
		if ((autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
		     IXGBE_AUTOC_LMS_KX4_AN ||
		    (autoc_reg & IXGBE_AUTOC_LMS_MASK) ==
		     IXGBE_AUTOC_LMS_KX4_AN_1G_AN) {
			links_reg = 0; /* Just in case Autoneg time = 0 */
			for (i = 0; i < IXGBE_AUTO_NEG_TIME; i++) {
				links_reg = FUNC0(hw, IXGBE_LINKS);
				if (links_reg & IXGBE_LINKS_KX_AN_COMP)
					break;
				FUNC3(100);
			}
			if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
				status = IXGBE_ERR_AUTONEG_NOT_COMPLETE;
				FUNC2(hw, "Autonegotiation did not complete.\n");
			}
		}
	}

	/* Add delay to filter out noises during initial link setup */
	FUNC3(50);

	return status;
}