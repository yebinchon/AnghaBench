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
struct iwl_rx_packet {int /*<<< orphan*/  data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  ampdu_ref; int /*<<< orphan*/  last_phy_info; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct iwl_rx_packet* FUNC1 (struct iwl_rx_cmd_buffer*) ; 

int FUNC2(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
			  struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC1(rxb);

	FUNC0(&mvm->last_phy_info, pkt->data, sizeof(mvm->last_phy_info));
	mvm->ampdu_ref++;
	return 0;
}