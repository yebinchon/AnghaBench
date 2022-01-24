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
struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {long channel; } ;
struct lbs_private {TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {long m; int e; } ;
struct chan_freq_power {scalar_t__ freq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 struct chan_freq_power* FUNC3 (struct lbs_private*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct iw_request_info *info,
			 struct iw_freq *fwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	struct chan_freq_power *cfp;

	FUNC0(LBS_DEB_WEXT);

	cfp = FUNC3(priv, 0,
					   priv->curbssparams.channel);

	if (!cfp) {
		if (priv->curbssparams.channel)
			FUNC2("invalid channel %d\n",
			       priv->curbssparams.channel);
		return -EINVAL;
	}

	fwrq->m = (long)cfp->freq * 100000;
	fwrq->e = 1;

	FUNC2("freq %u\n", fwrq->m);
	FUNC1(LBS_DEB_WEXT);
	return 0;
}