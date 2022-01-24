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
typedef  int /*<<< orphan*/  u32 ;
struct ipw2100_priv {int status; int /*<<< orphan*/  wx_event_work; int /*<<< orphan*/  security_work; int /*<<< orphan*/  net_dev; TYPE_1__* ieee; int /*<<< orphan*/  bssid; int /*<<< orphan*/  essid_len; int /*<<< orphan*/  essid; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int IPW_DL_ASSOC ; 
 int IPW_DL_NOTIF ; 
 int IPW_DL_STATE ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_ASSOCIATING ; 
 int STATUS_RUNNING ; 
 int STATUS_SECURITY_UPDATED ; 
 int STATUS_STOPPING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssid ; 

__attribute__((used)) static void FUNC8(struct ipw2100_priv *priv, u32 status)
{
	FUNC0(ssid);

	FUNC1(IPW_DL_NOTIF | IPW_DL_STATE | IPW_DL_ASSOC,
		  "disassociated: '%s' %pM\n",
		  FUNC6(ssid, priv->essid, priv->essid_len),
		  priv->bssid);

	priv->status &= ~(STATUS_ASSOCIATED | STATUS_ASSOCIATING);

	if (priv->status & STATUS_STOPPING) {
		FUNC2("Card is stopping itself, discard ASSN_LOST.\n");
		return;
	}

	FUNC3(priv->bssid, 0, ETH_ALEN);
	FUNC3(priv->ieee->bssid, 0, ETH_ALEN);

	FUNC4(priv->net_dev);
	FUNC5(priv->net_dev);

	if (!(priv->status & STATUS_RUNNING))
		return;

	if (priv->status & STATUS_SECURITY_UPDATED)
		FUNC7(&priv->security_work, 0);

	FUNC7(&priv->wx_event_work, 0);
}