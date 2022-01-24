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
struct iwl_priv {int dummy; } ;
struct iwl_error_resp {int /*<<< orphan*/  error_info; int /*<<< orphan*/  bad_cmd_seq_num; int /*<<< orphan*/  cmd_id; int /*<<< orphan*/  error_type; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
			       struct iwl_rx_cmd_buffer *rxb,
			       struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_error_resp *err_resp = (void *)pkt->data;

	FUNC0(priv, "Error Reply type 0x%08X cmd REPLY_ERROR (0x%02X) "
		"seq 0x%04X ser 0x%08X\n",
		FUNC2(err_resp->error_type),
		err_resp->cmd_id,
		FUNC1(err_resp->bad_cmd_seq_num),
		FUNC2(err_resp->error_info));
	return 0;
}