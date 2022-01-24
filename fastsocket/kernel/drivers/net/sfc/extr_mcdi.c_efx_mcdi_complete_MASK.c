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
struct efx_mcdi_iface {int /*<<< orphan*/  wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCDI_STATE_COMPLETED ; 
 scalar_t__ MCDI_STATE_RUNNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct efx_mcdi_iface *mcdi)
{
	/* If the interface is RUNNING, then move to COMPLETED and wake any
	 * waiters. If the interface isn't in RUNNING then we've received a
	 * duplicate completion after we've already transitioned back to
	 * QUIESCENT. [A subsequent invocation would increment seqno, so would
	 * have failed the seqno check].
	 */
	if (FUNC0(&mcdi->state,
			   MCDI_STATE_RUNNING,
			   MCDI_STATE_COMPLETED) == MCDI_STATE_RUNNING) {
		FUNC1(&mcdi->wq);
		return true;
	}

	return false;
}