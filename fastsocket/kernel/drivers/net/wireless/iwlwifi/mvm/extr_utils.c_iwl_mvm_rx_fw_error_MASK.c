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
struct iwl_mvm {int dummy; } ;
struct iwl_error_resp {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  error_service; int /*<<< orphan*/  bad_cmd_seq_num; int /*<<< orphan*/  cmd_id; int /*<<< orphan*/  error_type; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC4 (struct iwl_rx_cmd_buffer*) ; 

int FUNC5(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb,
			  struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC4(rxb);
	struct iwl_error_resp *err_resp = (void *)pkt->data;

	FUNC0(mvm, "FW Error notification: type 0x%08X cmd_id 0x%02X\n",
		FUNC2(err_resp->error_type), err_resp->cmd_id);
	FUNC0(mvm, "FW Error notification: seq 0x%04X service 0x%08X\n",
		FUNC1(err_resp->bad_cmd_seq_num),
		FUNC2(err_resp->error_service));
	FUNC0(mvm, "FW Error notification: timestamp 0x%16llX\n",
		FUNC3(err_resp->timestamp));
	return 0;
}