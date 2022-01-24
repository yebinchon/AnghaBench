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
typedef  int uint16_t ;
struct lbs_private {int enablehwauto; void* ratebitmap; int /*<<< orphan*/  cur_rate; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rate_adapt_rateset {void* enablehwauto; void* bitmap; void* action; TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_RATE_ADAPT_RATESET ; 
 int CMD_ACT_GET ; 
 int EINVAL ; 
 int /*<<< orphan*/  LBS_DEB_CMD ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_rate_adapt_rateset*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (void*) ; 

int FUNC6(struct lbs_private *priv,
				      uint16_t cmd_action)
{
	struct cmd_ds_802_11_rate_adapt_rateset cmd;
	int ret;

	FUNC2(LBS_DEB_CMD);

	if (!priv->cur_rate && !priv->enablehwauto)
		return -EINVAL;

	cmd.hdr.size = FUNC0(sizeof(cmd));

	cmd.action = FUNC0(cmd_action);
	cmd.enablehwauto = FUNC0(priv->enablehwauto);
	cmd.bitmap = FUNC4(priv->cur_rate, priv->enablehwauto);
	ret = FUNC1(priv, CMD_802_11_RATE_ADAPT_RATESET, &cmd);
	if (!ret && cmd_action == CMD_ACT_GET) {
		priv->ratebitmap = FUNC5(cmd.bitmap);
		priv->enablehwauto = FUNC5(cmd.enablehwauto);
	}

	FUNC3(LBS_DEB_CMD, "ret %d", ret);
	return ret;
}