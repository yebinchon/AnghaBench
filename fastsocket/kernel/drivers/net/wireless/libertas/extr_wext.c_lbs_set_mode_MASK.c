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
typedef  scalar_t__ u32 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  lock; } ;
struct iw_request_info {int dummy; } ;
struct assoc_request {int /*<<< orphan*/  flags; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASSOC_FLAG_MODE ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_AUTO ; 
 scalar_t__ IW_MODE_INFRA ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 struct assoc_request* FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
		  struct iw_request_info *info, u32 * uwrq, char *extra)
{
	int ret = 0;
	struct lbs_private *priv = dev->ml_priv;
	struct assoc_request * assoc_req;

	FUNC1(LBS_DEB_WEXT);

	if (   (*uwrq != IW_MODE_ADHOC)
	    && (*uwrq != IW_MODE_INFRA)
	    && (*uwrq != IW_MODE_AUTO)) {
		FUNC3("Invalid mode: 0x%x\n", *uwrq);
		ret = -EINVAL;
		goto out;
	}

	FUNC6(&priv->lock);
	assoc_req = FUNC4(priv);
	if (!assoc_req) {
		ret = -ENOMEM;
		FUNC0(priv);
	} else {
		assoc_req->mode = *uwrq;
		FUNC8(ASSOC_FLAG_MODE, &assoc_req->flags);
		FUNC5(priv);
		FUNC3("Switching to mode: 0x%x\n", *uwrq);
	}
	FUNC7(&priv->lock);

out:
	FUNC2(LBS_DEB_WEXT, "ret %d", ret);
	return ret;
}