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
struct lbs_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_802_11_ad_hoc_stop {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_AD_HOC_STOP ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 int /*<<< orphan*/  LBS_DEB_JOIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_ad_hoc_stop*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_ds_802_11_ad_hoc_stop*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct lbs_private *priv)
{
	struct cmd_ds_802_11_ad_hoc_stop cmd;
	int ret;

	FUNC2(LBS_DEB_JOIN);

	FUNC5(&cmd, 0, sizeof (cmd));
	cmd.hdr.size = FUNC0 (sizeof (cmd));

	ret = FUNC1(priv, CMD_802_11_AD_HOC_STOP, &cmd);

	/* Clean up everything even if there was an error */
	FUNC4(priv);

	FUNC3(LBS_DEB_ASSOC, "ret %d", ret);
	return ret;
}