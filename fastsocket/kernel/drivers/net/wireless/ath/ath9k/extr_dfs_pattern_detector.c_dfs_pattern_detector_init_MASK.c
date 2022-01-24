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
struct dfs_pattern_detector {scalar_t__ (* set_dfs_domain ) (struct dfs_pattern_detector*,int) ;struct ath_hw* ah; int /*<<< orphan*/  channel_detectors; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
typedef  enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 struct dfs_pattern_detector default_dpd ; 
 int /*<<< orphan*/  FUNC3 (struct dfs_pattern_detector*) ; 
 struct dfs_pattern_detector* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dfs_pattern_detector*,int) ; 

struct dfs_pattern_detector *
FUNC6(struct ath_hw *ah, enum nl80211_dfs_regions region)
{
	struct dfs_pattern_detector *dpd;
	struct ath_common *common = FUNC1(ah);

	dpd = FUNC4(sizeof(*dpd), GFP_KERNEL);
	if (dpd == NULL)
		return NULL;

	*dpd = default_dpd;
	FUNC0(&dpd->channel_detectors);

	dpd->ah = ah;
	if (dpd->set_dfs_domain(dpd, region))
		return dpd;

	FUNC2(common, DFS,"Could not set DFS domain to %d", region);
	FUNC3(dpd);
	return NULL;
}