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
struct TYPE_2__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct lbs_private {scalar_t__ connect_status; TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct iw_request_info *info,
		   struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_WEXT);

	/*
	 * Note : if dwrq->flags != 0, we should get the relevant SSID from
	 * the SSID list...
	 */

	/*
	 * Get the current SSID
	 */
	if (priv->connect_status == LBS_CONNECTED) {
		FUNC2(extra, priv->curbssparams.ssid,
		       priv->curbssparams.ssid_len);
	} else {
		FUNC3(extra, 0, 32);
	}
	/*
	 * If none, we may want to get the one that was set
	 */

	dwrq->length = priv->curbssparams.ssid_len;

	dwrq->flags = 1;	/* active */

	FUNC1(LBS_DEB_WEXT);
	return 0;
}