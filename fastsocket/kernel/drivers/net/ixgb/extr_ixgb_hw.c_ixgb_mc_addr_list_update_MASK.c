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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ixgb_hw {int num_mc_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IXGB_ETH_LENGTH_OF_ADDRESS ; 
 int IXGB_MC_TBL_SIZE ; 
 int IXGB_RAR_ENTRIES ; 
 int /*<<< orphan*/  FUNC4 (struct ixgb_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTA ; 
 int /*<<< orphan*/  RA ; 
 int FUNC5 (struct ixgb_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgb_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgb_hw*,int /*<<< orphan*/ *,int) ; 

void
FUNC8(struct ixgb_hw *hw,
			  u8 *mc_addr_list,
			  u32 mc_addr_count,
			  u32 pad)
{
	u32 hash_value;
	u32 i;
	u32 rar_used_count = 1;		/* RAR[0] is used for our MAC address */

	FUNC0("ixgb_mc_addr_list_update");

	/* Set the new number of MC addresses that we are being requested to use. */
	hw->num_mc_addrs = mc_addr_count;

	/* Clear RAR[1-15] */
	FUNC1(" Clearing RAR[1-15]\n");
	for (i = rar_used_count; i < IXGB_RAR_ENTRIES; i++) {
		FUNC4(hw, RA, (i << 1), 0);
		FUNC4(hw, RA, ((i << 1) + 1), 0);
	}

	/* Clear the MTA */
	FUNC1(" Clearing MTA\n");
	for (i = 0; i < IXGB_MC_TBL_SIZE; i++)
		FUNC4(hw, MTA, i, 0);

	/* Add the new addresses */
	for (i = 0; i < mc_addr_count; i++) {
		FUNC1(" Adding the multicast addresses:\n");
		FUNC3(" MC Addr #%d =%.2X %.2X %.2X %.2X %.2X %.2X\n", i,
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad)],
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
				       1],
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
				       2],
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
				       3],
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
				       4],
			  mc_addr_list[i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad) +
				       5]);

		/* Place this multicast address in the RAR if there is room, *
		 * else put it in the MTA
		 */
		if (rar_used_count < IXGB_RAR_ENTRIES) {
			FUNC7(hw,
				     mc_addr_list +
				     (i * (IXGB_ETH_LENGTH_OF_ADDRESS + pad)),
				     rar_used_count);
			FUNC2("Added a multicast address to RAR[%d]\n", i);
			rar_used_count++;
		} else {
			hash_value = FUNC5(hw,
						       mc_addr_list +
						       (i *
							(IXGB_ETH_LENGTH_OF_ADDRESS
							 + pad)));

			FUNC2(" Hash value = 0x%03X\n", hash_value);

			FUNC6(hw, hash_value);
		}
	}

	FUNC1("MC Update Complete\n");
	return;
}