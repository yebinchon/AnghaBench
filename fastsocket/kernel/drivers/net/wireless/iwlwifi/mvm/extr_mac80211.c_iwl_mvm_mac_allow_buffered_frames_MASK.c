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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_frame_release_type { ____Placeholder_ieee80211_frame_release_type } ieee80211_frame_release_type ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_sta*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_hw *hw,
				  struct ieee80211_sta *sta, u16 tid,
				  int num_frames,
				  enum ieee80211_frame_release_type reason,
				  bool more_data)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	/* TODO: how do we tell the fw to send frames for a specific TID */

	/*
	 * The fw will send EOSP notification when the last frame will be
	 * transmitted.
	 */
	FUNC1(mvm, sta, reason, num_frames);
}