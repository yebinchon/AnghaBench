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
struct ipw_priv {int config; int channel; int bssid; int capability; int rates_mask; int /*<<< orphan*/  essid_len; int /*<<< orphan*/  essid; } ;

/* Variables and functions */
 int CAP_PRIVACY_ON ; 
 int CFG_STATIC_BSSID ; 
 int CFG_STATIC_CHANNEL ; 
 int CFG_STATIC_ESSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssid ; 

__attribute__((used)) static void FUNC3(struct ipw_priv *priv)
{
	FUNC0(ssid);
	FUNC1("Scan completed, no valid APs matched "
		       "[CFG 0x%08X]\n", priv->config);
	if (priv->config & CFG_STATIC_CHANNEL)
		FUNC1("Channel locked to %d\n", priv->channel);
	else
		FUNC1("Channel unlocked.\n");
	if (priv->config & CFG_STATIC_ESSID)
		FUNC1("ESSID locked to '%s'\n",
			       FUNC2(ssid, priv->essid, priv->essid_len));
	else
		FUNC1("ESSID unlocked.\n");
	if (priv->config & CFG_STATIC_BSSID)
		FUNC1("BSSID locked to %pM\n", priv->bssid);
	else
		FUNC1("BSSID unlocked.\n");
	if (priv->capability & CAP_PRIVACY_ON)
		FUNC1("PRIVACY on\n");
	else
		FUNC1("PRIVACY off\n");
	FUNC1("RATE MASK: 0x%08X\n", priv->rates_mask);
}