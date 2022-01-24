#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct lbtf_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_mac_address {TYPE_1__ hdr; int /*<<< orphan*/  macadd; void* action; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_MAC_ADDRESS ; 
 int CMD_ACT_SET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBTF_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lbtf_private*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct lbtf_private *priv, uint8_t *mac_addr)
{
	struct cmd_ds_802_11_mac_address cmd;
	FUNC2(LBTF_DEB_CMD);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	cmd.action = FUNC0(CMD_ACT_SET);

	FUNC4(cmd.macadd, mac_addr, ETH_ALEN);

	FUNC1(priv, CMD_802_11_MAC_ADDRESS, &cmd.hdr, sizeof(cmd));
	FUNC3(LBTF_DEB_CMD);
	return 0;
}