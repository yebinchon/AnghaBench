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
struct lbs_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  nodename; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct iw_request_info *info,
			 struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_WEXT);

	/*
	 * Check the size of the string
	 */

	if (dwrq->length > 16) {
		return -E2BIG;
	}

	FUNC4(&priv->lock);
	FUNC3(priv->nodename, 0, sizeof(priv->nodename));
	FUNC2(priv->nodename, extra, dwrq->length);
	FUNC5(&priv->lock);

	FUNC1(LBS_DEB_WEXT);
	return 0;
}