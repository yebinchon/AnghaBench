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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_card_state_notif {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int CT_KILL_CARD_DISABLED ; 
 int HW_CARD_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,char*,char*,char*) ; 
 int SW_CARD_DISABLED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

int FUNC3(struct iwl_mvm *mvm,
				    struct iwl_rx_cmd_buffer *rxb,
				    struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_card_state_notif *card_state_notif = (void *)pkt->data;
	u32 flags = FUNC1(card_state_notif->flags);

	FUNC0(mvm, "Card state received: HW:%s SW:%s CT:%s\n",
			  (flags & HW_CARD_DISABLED) ? "Kill" : "On",
			  (flags & SW_CARD_DISABLED) ? "Kill" : "On",
			  (flags & CT_KILL_CARD_DISABLED) ?
			  "Reached" : "Not reached");

	return 0;
}