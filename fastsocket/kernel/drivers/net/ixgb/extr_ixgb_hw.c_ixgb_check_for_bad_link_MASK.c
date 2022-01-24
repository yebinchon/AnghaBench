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
struct ixgb_hw {scalar_t__ phy_type; scalar_t__ lastLFC; scalar_t__ lastRFC; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LFC ; 
 int /*<<< orphan*/  RFC ; 
 scalar_t__ ixgb_phy_type_txn17401 ; 

bool FUNC2(struct ixgb_hw *hw)
{
	u32 newLFC, newRFC;
	bool bad_link_returncode = false;

	if (hw->phy_type == ixgb_phy_type_txn17401) {
		newLFC = FUNC1(hw, LFC);
		newRFC = FUNC1(hw, RFC);
		if ((hw->lastLFC + 250 < newLFC)
		    || (hw->lastRFC + 250 < newRFC)) {
			FUNC0
			    ("BAD LINK! too many LFC/RFC since last check\n");
			bad_link_returncode = true;
		}
		hw->lastLFC = newLFC;
		hw->lastRFC = newRFC;
	}

	return bad_link_returncode;
}