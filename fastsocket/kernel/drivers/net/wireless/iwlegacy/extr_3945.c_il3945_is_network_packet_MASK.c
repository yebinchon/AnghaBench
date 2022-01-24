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
struct il_priv {int iw_mode; int /*<<< orphan*/  bssid; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; } ;

/* Variables and functions */
#define  NL80211_IFTYPE_ADHOC 129 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct il_priv *il, struct ieee80211_hdr *header)
{
	/* Filter incoming packets to determine if they are targeted toward
	 * this network, discarding packets coming from ourselves */
	switch (il->iw_mode) {
	case NL80211_IFTYPE_ADHOC:	/* Header: Dest. | Source    | BSSID */
		/* packets to our IBSS update information */
		return FUNC0(header->addr3, il->bssid);
	case NL80211_IFTYPE_STATION:	/* Header: Dest. | AP{BSSID} | Source */
		/* packets to our IBSS update information */
		return FUNC0(header->addr2, il->bssid);
	default:
		return 1;
	}
}