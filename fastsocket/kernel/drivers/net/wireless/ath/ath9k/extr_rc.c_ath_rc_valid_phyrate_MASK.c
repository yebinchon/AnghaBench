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
typedef  int u32 ;

/* Variables and functions */
 int WLAN_RC_40_FLAG ; 
 int WLAN_RC_DS_FLAG ; 
 int WLAN_RC_HT_FLAG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int WLAN_RC_SGI_FLAG ; 
 int WLAN_RC_TS_FLAG ; 

__attribute__((used)) static int FUNC5(u32 phy, u32 capflag, int ignore_cw)
{
	if (FUNC2(phy) && !(capflag & WLAN_RC_HT_FLAG))
		return 0;
	if (FUNC1(phy) && !(capflag & WLAN_RC_DS_FLAG))
		return 0;
	if (FUNC4(phy) && !(capflag & WLAN_RC_TS_FLAG))
		return 0;
	if (FUNC3(phy) && !(capflag & WLAN_RC_SGI_FLAG))
		return 0;
	if (!ignore_cw && FUNC2(phy))
		if (FUNC0(phy) && !(capflag & WLAN_RC_40_FLAG))
			return 0;
	return 1;
}