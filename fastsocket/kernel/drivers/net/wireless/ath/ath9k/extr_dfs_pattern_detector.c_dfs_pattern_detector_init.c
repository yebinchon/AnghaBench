
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_pattern_detector {scalar_t__ (* set_dfs_domain ) (struct dfs_pattern_detector*,int) ;struct ath_hw* ah; int channel_detectors; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;


 int DFS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,int) ;
 struct dfs_pattern_detector default_dpd ;
 int kfree (struct dfs_pattern_detector*) ;
 struct dfs_pattern_detector* kmalloc (int,int ) ;
 scalar_t__ stub1 (struct dfs_pattern_detector*,int) ;

struct dfs_pattern_detector *
dfs_pattern_detector_init(struct ath_hw *ah, enum nl80211_dfs_regions region)
{
 struct dfs_pattern_detector *dpd;
 struct ath_common *common = ath9k_hw_common(ah);

 dpd = kmalloc(sizeof(*dpd), GFP_KERNEL);
 if (dpd == ((void*)0))
  return ((void*)0);

 *dpd = default_dpd;
 INIT_LIST_HEAD(&dpd->channel_detectors);

 dpd->ah = ah;
 if (dpd->set_dfs_domain(dpd, region))
  return dpd;

 ath_dbg(common, DFS,"Could not set DFS domain to %d", region);
 kfree(dpd);
 return ((void*)0);
}
