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
struct TYPE_2__ {int flags; int /*<<< orphan*/  length; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int status; int /*<<< orphan*/  mutex; int /*<<< orphan*/  essid_len; int /*<<< orphan*/  essid; } ;

/* Variables and functions */
 int CFG_STATIC_ESSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 struct ipw_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssid ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC2(dev);
	FUNC0(ssid);

	/* If we are associated, trying to associate, or have a statically
	 * configured ESSID then return that; otherwise return ANY */
	FUNC4(&priv->mutex);
	if (priv->config & CFG_STATIC_ESSID ||
	    priv->status & (STATUS_ASSOCIATED | STATUS_ASSOCIATING)) {
		FUNC1("Getting essid: '%s'\n",
			     FUNC6(ssid, priv->essid, priv->essid_len));
		FUNC3(extra, priv->essid, priv->essid_len);
		wrqu->essid.length = priv->essid_len;
		wrqu->essid.flags = 1;	/* active */
	} else {
		FUNC1("Getting essid: ANY\n");
		wrqu->essid.length = 0;
		wrqu->essid.flags = 0;	/* active */
	}
	FUNC5(&priv->mutex);
	return 0;
}