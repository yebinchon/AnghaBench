#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ iw_mode; int channel_mask; int channel; struct hermes hw; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; int m; } ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int HERMES_CMD_TEST ; 
 int HERMES_TEST_SET_CHANNEL ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int NUM_CHANNELS ; 
 int FUNC0 (int) ; 
 struct orinoco_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*,unsigned long*) ; 
 int FUNC4 (struct hermes*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				 struct iw_request_info *info,
				 struct iw_freq *frq,
				 char *extra)
{
	struct orinoco_private *priv = FUNC1(dev);
	int chan = -1;
	unsigned long flags;
	int err = -EINPROGRESS;		/* Call commit handler */

	/* In infrastructure mode the AP sets the channel */
	if (priv->iw_mode == NL80211_IFTYPE_STATION)
		return -EBUSY;

	if ((frq->e == 0) && (frq->m <= 1000)) {
		/* Setting by channel number */
		chan = frq->m;
	} else {
		/* Setting by frequency */
		int denom = 1;
		int i;

		/* Calculate denominator to rescale to MHz */
		for (i = 0; i < (6 - frq->e); i++)
			denom *= 10;

		chan = FUNC0(frq->m / denom);
	}

	if ((chan < 1) || (chan > NUM_CHANNELS) ||
	     !(priv->channel_mask & (1 << (chan - 1))))
		return -EINVAL;

	if (FUNC2(priv, &flags) != 0)
		return -EBUSY;

	priv->channel = chan;
	if (priv->iw_mode == NL80211_IFTYPE_MONITOR) {
		/* Fast channel change - no commit if successful */
		struct hermes *hw = &priv->hw;
		err = hw->ops->cmd_wait(hw, HERMES_CMD_TEST |
					    HERMES_TEST_SET_CHANNEL,
					chan, NULL);
	}
	FUNC3(priv, &flags);

	return err;
}