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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_deauthenticate {void* reasoncode; int /*<<< orphan*/  macaddr; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_DEAUTHENTICATE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBS_DEB_JOIN ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_deauthenticate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cmd_ds_802_11_deauthenticate*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct lbs_private *priv, u8 bssid[ETH_ALEN],
				 u16 reason)
{
	struct cmd_ds_802_11_deauthenticate cmd;
	int ret;

	FUNC2(LBS_DEB_JOIN);

	FUNC6(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	FUNC5(cmd.macaddr, &bssid[0], ETH_ALEN);
	cmd.reasoncode = FUNC0(reason);

	ret = FUNC1(priv, CMD_802_11_DEAUTHENTICATE, &cmd);

	/* Clean up everything even if there was an error; can't assume that
	 * we're still authenticated to the AP after trying to deauth.
	 */
	FUNC4(priv);

	FUNC3(LBS_DEB_JOIN);
	return ret;
}