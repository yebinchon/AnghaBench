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
struct iwl_rx_packet {int dummy; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_priv*,void*,struct iwl_rx_packet*) ; 
 struct iwl_rx_packet* FUNC1 (struct iwl_rx_cmd_buffer*) ; 

int FUNC2(struct iwl_priv *priv, struct iwl_rx_cmd_buffer *rxb,
			       struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC1(rxb);

	if (!cmd)
		return 0;

	return FUNC0(priv, (void *)cmd->payload, pkt);
}