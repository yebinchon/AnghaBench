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
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_data; } ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  radio_on; } ;
struct iw_request_info {int dummy; } ;
struct assoc_request {int /*<<< orphan*/  flags; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_ETHER ; 
 int /*<<< orphan*/  ASSOC_FLAG_BSSID ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct assoc_request* FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct iw_request_info *info,
		 struct sockaddr *awrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;
	struct assoc_request * assoc_req;
	int ret = 0;

	FUNC1(LBS_DEB_WEXT);

	if (!priv->radio_on)
		return -EINVAL;

	if (awrq->sa_family != ARPHRD_ETHER)
		return -EINVAL;

	FUNC2("ASSOC: WAP: sa_data %pM\n", awrq->sa_data);

	FUNC6(&priv->lock);

	/* Get or create the current association request */
	assoc_req = FUNC3(priv);
	if (!assoc_req) {
		FUNC0(priv);
		ret = -ENOMEM;
	} else {
		/* Copy the BSSID to the association request */
		FUNC5(&assoc_req->bssid, awrq->sa_data, ETH_ALEN);
		FUNC8(ASSOC_FLAG_BSSID, &assoc_req->flags);
		FUNC4(priv);
	}

	FUNC7(&priv->lock);

	return ret;
}