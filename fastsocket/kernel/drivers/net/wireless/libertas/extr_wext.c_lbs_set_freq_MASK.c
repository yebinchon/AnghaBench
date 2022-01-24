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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  lock; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct chan_freq_power {scalar_t__ channel; } ;
struct assoc_request {int channel; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_CHANNEL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 struct chan_freq_power* FUNC0 (struct lbs_private*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 
 struct chan_freq_power* FUNC5 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 
 struct assoc_request* FUNC6 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct iw_request_info *info,
		  struct iw_freq *fwrq, char *extra)
{
	int ret = -EINVAL;
	struct lbs_private *priv = dev->ml_priv;
	struct chan_freq_power *cfp;
	struct assoc_request * assoc_req;

	FUNC2(LBS_DEB_WEXT);

	FUNC8(&priv->lock);
	assoc_req = FUNC6(priv);
	if (!assoc_req) {
		ret = -ENOMEM;
		goto out;
	}

	/* If setting by frequency, convert to a channel */
	if (fwrq->e == 1) {
		long f = fwrq->m / 100000;

		cfp = FUNC0(priv, 0, f);
		if (!cfp) {
			FUNC4("invalid freq %ld\n", f);
			goto out;
		}

		fwrq->e = 0;
		fwrq->m = (int) cfp->channel;
	}

	/* Setting by channel number */
	if (fwrq->m > 1000 || fwrq->e > 0) {
		goto out;
	}

	cfp = FUNC5(priv, 0, fwrq->m);
	if (!cfp) {
		goto out;
	}

	assoc_req->channel = fwrq->m;
	ret = 0;

out:
	if (ret == 0) {
		FUNC10(ASSOC_FLAG_CHANNEL, &assoc_req->flags);
		FUNC7(priv);
	} else {
		FUNC1(priv);
	}
	FUNC9(&priv->lock);

	FUNC3(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}