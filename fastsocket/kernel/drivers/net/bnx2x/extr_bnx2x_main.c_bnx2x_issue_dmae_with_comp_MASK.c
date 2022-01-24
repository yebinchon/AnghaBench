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
typedef  int u32 ;
struct dmae_command {int dummy; } ;
struct bnx2x {scalar_t__ recovery_state; int /*<<< orphan*/  dmae_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_DMAE ; 
 scalar_t__ BNX2X_RECOVERY_DONE ; 
 scalar_t__ BNX2X_RECOVERY_NIC_LOADING ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int DMAE_COMP_VAL ; 
 int DMAE_PCI_ERROR ; 
 int DMAE_PCI_ERR_FLAG ; 
 int DMAE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct dmae_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct dmae_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

int FUNC8(struct bnx2x *bp, struct dmae_command *dmae,
			       u32 *comp)
{
	int cnt = FUNC1(bp) ? (400000) : 4000;
	int rc = 0;

	FUNC3(bp, dmae, BNX2X_MSG_DMAE);

	/* Lock the dmae channel. Disable BHs to prevent a dead-lock
	 * as long as this code is called both from syscall context and
	 * from ndo_set_rx_mode() flow that may be called from BH.
	 */
	FUNC5(&bp->dmae_lock);

	/* reset completion */
	*comp = 0;

	/* post the command on the channel used for initializations */
	FUNC4(bp, dmae, FUNC2(bp));

	/* wait for completion */
	FUNC7(5);
	while ((*comp & ~DMAE_PCI_ERR_FLAG) != DMAE_COMP_VAL) {

		if (!cnt ||
		    (bp->recovery_state != BNX2X_RECOVERY_DONE &&
		     bp->recovery_state != BNX2X_RECOVERY_NIC_LOADING)) {
			FUNC0("DMAE timeout!\n");
			rc = DMAE_TIMEOUT;
			goto unlock;
		}
		cnt--;
		FUNC7(50);
	}
	if (*comp & DMAE_PCI_ERR_FLAG) {
		FUNC0("DMAE PCI error!\n");
		rc = DMAE_PCI_ERROR;
	}

unlock:
	FUNC6(&bp->dmae_lock);
	return rc;
}