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
typedef  scalar_t__ u64 ;
struct p54_common {unsigned int filter_flags; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_OTHER_BSS ; 
 unsigned int FIF_PROMISC_IN_BSS ; 
 int /*<<< orphan*/  FUNC0 (struct p54_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct p54_common*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *dev,
				 unsigned int changed_flags,
				 unsigned int *total_flags,
				 u64 multicast)
{
	struct p54_common *priv = dev->priv;

	*total_flags &= FIF_PROMISC_IN_BSS |
			FIF_ALLMULTI |
			FIF_OTHER_BSS;

	priv->filter_flags = *total_flags;

	if (changed_flags & (FIF_PROMISC_IN_BSS | FIF_OTHER_BSS))
		FUNC1(priv);

	if (changed_flags & FIF_ALLMULTI || multicast)
		FUNC0(priv);
}