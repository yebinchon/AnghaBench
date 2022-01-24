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
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int* queue_to_mac80211; int /*<<< orphan*/  hw; int /*<<< orphan*/  transport_queue_stop; int /*<<< orphan*/ * queue_stop_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int,int) ; 
 int IWL_INVALID_MAC80211_QUEUE ; 
 struct iwl_mvm* FUNC1 (struct iwl_op_mode*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iwl_op_mode *op_mode, int queue)
{
	struct iwl_mvm *mvm = FUNC1(op_mode);
	int mq = mvm->queue_to_mac80211[queue];

	if (FUNC2(mq == IWL_INVALID_MAC80211_QUEUE))
		return;

	if (FUNC3(&mvm->queue_stop_count[mq]) > 1) {
		FUNC0(mvm,
				    "queue %d (mac80211 %d) already stopped\n",
				    queue, mq);
		return;
	}

	FUNC5(mq, &mvm->transport_queue_stop);
	FUNC4(mvm->hw, mq);
}