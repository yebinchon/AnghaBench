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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_radio_version_notif {int /*<<< orphan*/  radio_dash; int /*<<< orphan*/  radio_step; int /*<<< orphan*/  radio_flavor; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

int FUNC3(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
			 struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_radio_version_notif *radio_version = (void *)pkt->data;

	/* TODO: what to do with that? */
	FUNC0(mvm,
		       "Radio version: flavor: 0x%08x, step 0x%08x, dash 0x%08x\n",
		       FUNC1(radio_version->radio_flavor),
		       FUNC1(radio_version->radio_step),
		       FUNC1(radio_version->radio_dash));
	return 0;
}