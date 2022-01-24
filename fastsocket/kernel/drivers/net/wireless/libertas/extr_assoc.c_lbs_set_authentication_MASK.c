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
struct lbs_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_802_11_authenticate {int /*<<< orphan*/  authtype; int /*<<< orphan*/  bssid; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_AUTHENTICATE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBS_DEB_JOIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_authenticate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lbs_private *priv, u8 bssid[6], u8 auth)
{
	struct cmd_ds_802_11_authenticate cmd;
	int ret = -1;

	FUNC3(LBS_DEB_JOIN);

	cmd.hdr.size = FUNC0(sizeof(cmd));
	FUNC6(cmd.bssid, bssid, ETH_ALEN);

	cmd.authtype = FUNC1(auth);

	FUNC4("AUTH_CMD: BSSID %pM, auth 0x%x\n", bssid, cmd.authtype);

	ret = FUNC2(priv, CMD_802_11_AUTHENTICATE, &cmd);

	FUNC5(LBS_DEB_JOIN, "ret %d", ret);
	return ret;
}