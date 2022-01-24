#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  center_freq2; int /*<<< orphan*/  center_freq1; int /*<<< orphan*/  width; TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_chanctx_conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
					  struct ieee80211_chanctx_conf *ctx,
					  u32 changed)
{
	FUNC0(ctx);
	FUNC1(hw->wiphy,
		    "change channel context control: %d MHz/width: %d/cfreqs:%d/%d MHz\n",
		    ctx->def.chan->center_freq, ctx->def.width,
		    ctx->def.center_freq1, ctx->def.center_freq2);
}