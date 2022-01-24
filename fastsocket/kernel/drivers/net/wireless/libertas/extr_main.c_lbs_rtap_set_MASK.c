#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct lbs_private {int monitormode; scalar_t__ mode; int /*<<< orphan*/ * currenttxskb; TYPE_1__ curbssparams; scalar_t__ mesh_open; scalar_t__ infra_open; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_MONITOR_MODE ; 
 int /*<<< orphan*/  CMD_ACT_SET ; 
 int /*<<< orphan*/  CMD_OPTION_WAITFORRSP ; 
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  WLAN_REASON_DEAUTH_LEAVING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 TYPE_2__* FUNC9 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char * buf, size_t count)
{
	int monitor_mode;
	struct lbs_private *priv = FUNC9(dev)->ml_priv;

	FUNC7(buf, "%x", &monitor_mode);
	if (monitor_mode) {
		if (priv->monitormode == monitor_mode)
			return FUNC8(buf);
		if (!priv->monitormode) {
			if (priv->infra_open || priv->mesh_open)
				return -EBUSY;
			if (priv->mode == IW_MODE_INFRA)
				FUNC3(priv,
							     priv->curbssparams.bssid,
							     WLAN_REASON_DEAUTH_LEAVING);
			else if (priv->mode == IW_MODE_ADHOC)
				FUNC2(priv);
			FUNC1(priv);
		}
		priv->monitormode = monitor_mode;
	} else {
		if (!priv->monitormode)
			return FUNC8(buf);
		priv->monitormode = 0;
		FUNC6(priv);

		if (priv->currenttxskb) {
			FUNC0(priv->currenttxskb);
			priv->currenttxskb = NULL;
		}

		/* Wake queues, command thread, etc. */
		FUNC4(priv);
	}

	FUNC5(priv,
			CMD_802_11_MONITOR_MODE, CMD_ACT_SET,
			CMD_OPTION_WAITFORRSP, 0, &priv->monitormode);
	return FUNC8(buf);
}