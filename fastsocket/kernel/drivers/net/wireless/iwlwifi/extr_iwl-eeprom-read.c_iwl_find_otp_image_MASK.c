#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct iwl_trans {int /*<<< orphan*/  dev; TYPE_1__* cfg; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_4__ {int max_ll_items; } ;
struct TYPE_3__ {TYPE_2__* base_params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (struct iwl_trans*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct iwl_trans *trans,
					u16 *validblockaddr)
{
	u16 next_link_addr = 0, valid_addr;
	__le16 link_value = 0;
	int usedblocks = 0;

	/* set addressing mode to absolute to traverse the link list */
	FUNC3(trans);

	/* checking for empty OTP or error */
	if (FUNC1(trans))
		return -EINVAL;

	/*
	 * start traverse link list
	 * until reach the max number of OTP blocks
	 * different devices have different number of OTP blocks
	 */
	do {
		/* save current valid block address
		 * check for more block on the link list
		 */
		valid_addr = next_link_addr;
		next_link_addr = FUNC4(link_value) * sizeof(u16);
		FUNC0(trans->dev, "OTP blocks %d addr 0x%x\n",
				 usedblocks, next_link_addr);
		if (FUNC2(trans, next_link_addr, &link_value))
			return -EINVAL;
		if (!link_value) {
			/*
			 * reach the end of link list, return success and
			 * set address point to the starting address
			 * of the image
			 */
			*validblockaddr = valid_addr;
			/* skip first 2 bytes (link list pointer) */
			*validblockaddr += 2;
			return 0;
		}
		/* more in the link list, continue */
		usedblocks++;
	} while (usedblocks <= trans->cfg->base_params->max_ll_items);

	/* OTP has no valid blocks */
	FUNC0(trans->dev, "OTP has no valid blocks\n");
	return -EINVAL;
}