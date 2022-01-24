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
typedef  int u64 ;
struct zd_mc_hash {int low; scalar_t__ high; } ;
struct zd_mac {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct dev_addr_list {struct dev_addr_list* next; int /*<<< orphan*/  dmi_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct zd_mac* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_mc_hash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_mc_hash*) ; 

__attribute__((used)) static u64 FUNC5(struct ieee80211_hw *hw,
				   int mc_count, struct dev_addr_list *ha)
{
	struct zd_mac *mac = FUNC1(hw);
	struct zd_mc_hash hash;
	int i;

	FUNC4(&hash);

	for (i = 0; i < mc_count; i++) {
		if (!ha)
			break;
		FUNC0(FUNC2(mac), "mc addr %pM\n", ha->dmi_addr);
		FUNC3(&hash, ha->dmi_addr);
		ha = ha->next;
	}

	return hash.low | ((u64)hash.high << 32);
}