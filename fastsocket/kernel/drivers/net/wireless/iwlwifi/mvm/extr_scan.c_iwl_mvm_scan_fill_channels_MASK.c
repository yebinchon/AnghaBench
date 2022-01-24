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
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct iwl_scan_cmd {int channel_count; TYPE_1__ tx_cmd; scalar_t__ data; } ;
struct iwl_scan_channel {void* iteration_count; void* passive_dwell; void* active_dwell; int /*<<< orphan*/  type; void* channel; } ;
struct cfg80211_scan_request {TYPE_2__** channels; int /*<<< orphan*/  n_ssids; } ;
struct TYPE_4__ {int hw_value; int flags; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 scalar_t__ SCAN_CHANNEL_TYPE_ACTIVE ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iwl_scan_cmd *cmd,
				       struct cfg80211_scan_request *req)
{
	u16 passive_dwell = FUNC4(req->channels[0]->band);
	u16 active_dwell = FUNC3(req->channels[0]->band,
						    req->n_ssids);
	struct iwl_scan_channel *chan = (struct iwl_scan_channel *)
		(cmd->data + FUNC5(cmd->tx_cmd.len));
	int i;

	for (i = 0; i < cmd->channel_count; i++) {
		chan->channel = FUNC1(req->channels[i]->hw_value);
		chan->type = FUNC2(FUNC0(req->n_ssids) - 1);
		if (req->channels[i]->flags & IEEE80211_CHAN_PASSIVE_SCAN)
			chan->type &= FUNC2(~SCAN_CHANNEL_TYPE_ACTIVE);
		chan->active_dwell = FUNC1(active_dwell);
		chan->passive_dwell = FUNC1(passive_dwell);
		chan->iteration_count = FUNC1(1);
		chan++;
	}
}