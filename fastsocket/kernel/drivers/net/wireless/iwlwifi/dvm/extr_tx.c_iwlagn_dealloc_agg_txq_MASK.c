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
struct iwl_priv {int /*<<< orphan*/ * queue_to_mac80211; int /*<<< orphan*/  agg_q_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_INVALID_MAC80211_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct iwl_priv *priv, int q)
{
	FUNC0(q, priv->agg_q_alloc);
	priv->queue_to_mac80211[q] = IWL_INVALID_MAC80211_QUEUE;
}