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
struct lbs_802_11_security {scalar_t__ WPAenabled; int /*<<< orphan*/  wep_enabled; } ;
struct bss_descriptor {scalar_t__* wpa_ie; } ;

/* Variables and functions */
 scalar_t__ WLAN_EID_GENERIC ; 

__attribute__((used)) static inline int FUNC0(struct lbs_802_11_security *secinfo,
				struct bss_descriptor *match_bss)
{
	if (!secinfo->wep_enabled && secinfo->WPAenabled
	    && (match_bss->wpa_ie[0] == WLAN_EID_GENERIC)
	    /* privacy bit may NOT be set in some APs like LinkSys WRT54G
	    && (match_bss->capability & WLAN_CAPABILITY_PRIVACY) */
	   )
		return 1;
	else
		return 0;
}