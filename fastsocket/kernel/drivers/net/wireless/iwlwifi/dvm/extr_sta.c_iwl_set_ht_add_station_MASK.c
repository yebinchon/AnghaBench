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
typedef  size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {TYPE_2__* stations; int /*<<< orphan*/  sta_lock; } ;
struct ieee80211_sta {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_3__ {int /*<<< orphan*/  station_flags; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,struct ieee80211_sta*,struct iwl_rxon_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iwl_priv *priv, u8 index,
				   struct ieee80211_sta *sta,
				   struct iwl_rxon_context *ctx)
{
	__le32 flags, mask;

	FUNC0(priv, sta, ctx, &flags, &mask);

	FUNC1(&priv->sta_lock);
	priv->stations[index].sta.station_flags &= ~mask;
	priv->stations[index].sta.station_flags |= flags;
}