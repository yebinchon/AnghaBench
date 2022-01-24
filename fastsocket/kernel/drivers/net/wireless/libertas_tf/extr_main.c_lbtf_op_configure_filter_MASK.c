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
struct lbtf_private {int mac_control; scalar_t__ nr_of_multicastmacaddr; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;

/* Variables and functions */
 int CMD_ACT_MAC_ALL_MULTICAST_ENABLE ; 
 int CMD_ACT_MAC_MULTICAST_ENABLE ; 
 int CMD_ACT_MAC_PROMISCUOUS_ENABLE ; 
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_PROMISC_IN_BSS ; 
 int /*<<< orphan*/  LBTF_DEB_MACOPS ; 
 scalar_t__ MRVDRV_MAX_MULTICAST_LIST_SIZE ; 
 unsigned int SUPPORTED_FIF_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
			unsigned int changed_flags,
			unsigned int *new_flags,
			u64 multicast)
{
	struct lbtf_private *priv = hw->priv;
	int old_mac_control = priv->mac_control;

	FUNC1(LBTF_DEB_MACOPS);

	changed_flags &= SUPPORTED_FIF_FLAGS;
	*new_flags &= SUPPORTED_FIF_FLAGS;

	if (!changed_flags) {
		FUNC2(LBTF_DEB_MACOPS);
		return;
	}

	if (*new_flags & (FIF_PROMISC_IN_BSS))
		priv->mac_control |= CMD_ACT_MAC_PROMISCUOUS_ENABLE;
	else
		priv->mac_control &= ~CMD_ACT_MAC_PROMISCUOUS_ENABLE;
	if (*new_flags & (FIF_ALLMULTI) ||
	    multicast > MRVDRV_MAX_MULTICAST_LIST_SIZE) {
		priv->mac_control |= CMD_ACT_MAC_ALL_MULTICAST_ENABLE;
		priv->mac_control &= ~CMD_ACT_MAC_MULTICAST_ENABLE;
	} else if (multicast) {
		priv->mac_control |= CMD_ACT_MAC_MULTICAST_ENABLE;
		priv->mac_control &= ~CMD_ACT_MAC_ALL_MULTICAST_ENABLE;
		FUNC0(priv);
	} else {
		priv->mac_control &= ~(CMD_ACT_MAC_MULTICAST_ENABLE |
				       CMD_ACT_MAC_ALL_MULTICAST_ENABLE);
		if (priv->nr_of_multicastmacaddr) {
			priv->nr_of_multicastmacaddr = 0;
			FUNC0(priv);
		}
	}


	if (priv->mac_control != old_mac_control)
		FUNC3(priv);

	FUNC2(LBTF_DEB_MACOPS);
}