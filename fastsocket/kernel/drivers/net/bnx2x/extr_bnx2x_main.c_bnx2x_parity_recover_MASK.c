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
typedef  void* u32 ;
struct TYPE_2__ {void* unrecoverable_error; void* recoverable_error; } ;
struct bnx2x {int recovery_state; int is_leader; TYPE_1__ eth_stats; int /*<<< orphan*/  dev; int /*<<< orphan*/  sp_rtnl_task; } ;

/* Variables and functions */
 int BNX2X_RECOVERY_DONE ; 
#define  BNX2X_RECOVERY_INIT 129 
 int BNX2X_RECOVERY_NIC_LOADING ; 
#define  BNX2X_RECOVERY_WAIT 128 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int HZ ; 
 int /*<<< orphan*/  LOAD_NORMAL ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  UNLOAD_RECOVERY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bnx2x*,int*,int) ; 
 int FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int) ; 
 int FUNC10 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static void FUNC19(struct bnx2x *bp)
{
	bool global = false;
	u32 error_recovered, error_unrecovered;
	bool is_parity;

	FUNC1(NETIF_MSG_HW, "Handling parity\n");
	while (1) {
		switch (bp->recovery_state) {
		case BNX2X_RECOVERY_INIT:
			FUNC1(NETIF_MSG_HW, "State is BNX2X_RECOVERY_INIT\n");
			is_parity = FUNC3(bp, &global, false);
			FUNC2(!is_parity);

			/* Try to get a LEADER_LOCK HW lock */
			if (FUNC14(bp)) {
				FUNC13(bp);
				/*
				 * Check if there is a global attention and if
				 * there was a global attention, set the global
				 * reset bit.
				 */

				if (global)
					FUNC12(bp);

				bp->is_leader = 1;
			}

			/* Stop the driver */
			/* If interface has been removed - break */
			if (FUNC7(bp, UNLOAD_RECOVERY, false))
				return;

			bp->recovery_state = BNX2X_RECOVERY_WAIT;

			/* Ensure "is_leader", MCP command sequence and
			 * "recovery_state" update values are seen on other
			 * CPUs.
			 */
			FUNC18();
			break;

		case BNX2X_RECOVERY_WAIT:
			FUNC1(NETIF_MSG_HW, "State is BNX2X_RECOVERY_WAIT\n");
			if (bp->is_leader) {
				int other_engine = FUNC0(bp) ? 0 : 1;
				bool other_load_status =
					FUNC4(bp, other_engine);
				bool load_status =
					FUNC4(bp, FUNC0(bp));
				global = FUNC10(bp);

				/*
				 * In case of a parity in a global block, let
				 * the first leader that performs a
				 * leader_reset() reset the global blocks in
				 * order to clear global attentions. Otherwise
				 * the gates will remain closed for that
				 * engine.
				 */
				if (load_status ||
				    (global && other_load_status)) {
					/* Wait until all other functions get
					 * down.
					 */
					FUNC17(&bp->sp_rtnl_task,
								HZ/10);
					return;
				} else {
					/* If all other functions got down -
					 * try to bring the chip back to
					 * normal. In any case it's an exit
					 * point for a leader.
					 */
					if (FUNC5(bp)) {
						FUNC8(bp);
						return;
					}

					/* If we are here, means that the
					 * leader has succeeded and doesn't
					 * want to be a leader any more. Try
					 * to continue as a none-leader.
					 */
					break;
				}
			} else { /* non-leader */
				if (!FUNC9(bp, FUNC0(bp))) {
					/* Try to get a LEADER_LOCK HW lock as
					 * long as a former leader may have
					 * been unloaded by the user or
					 * released a leadership by another
					 * reason.
					 */
					if (FUNC14(bp)) {
						/* I'm a leader now! Restart a
						 * switch case.
						 */
						bp->is_leader = 1;
						break;
					}

					FUNC17(&bp->sp_rtnl_task,
								HZ/10);
					return;

				} else {
					/*
					 * If there was a global attention, wait
					 * for it to be cleared.
					 */
					if (FUNC10(bp)) {
						FUNC17(
							&bp->sp_rtnl_task,
							HZ/10);
						return;
					}

					error_recovered =
					  bp->eth_stats.recoverable_error;
					error_unrecovered =
					  bp->eth_stats.unrecoverable_error;
					bp->recovery_state =
						BNX2X_RECOVERY_NIC_LOADING;
					if (FUNC6(bp, LOAD_NORMAL)) {
						error_unrecovered++;
						FUNC15(bp->dev,
							   "Recovery failed. Power cycle needed\n");
						/* Disconnect this device */
						FUNC16(bp->dev);
						/* Shut down the power */
						FUNC11(
							bp, PCI_D3hot);
						FUNC18();
					} else {
						bp->recovery_state =
							BNX2X_RECOVERY_DONE;
						error_recovered++;
						FUNC18();
					}
					bp->eth_stats.recoverable_error =
						error_recovered;
					bp->eth_stats.unrecoverable_error =
						error_unrecovered;

					return;
				}
			}
		default:
			return;
		}
	}
}