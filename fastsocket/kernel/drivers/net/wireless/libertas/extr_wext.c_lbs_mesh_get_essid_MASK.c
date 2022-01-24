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
struct lbs_private {int /*<<< orphan*/  mesh_ssid_len; int /*<<< orphan*/  mesh_ssid; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			      struct iw_request_info *info,
			      struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_WEXT);

	FUNC2(extra, priv->mesh_ssid, priv->mesh_ssid_len);

	dwrq->length = priv->mesh_ssid_len;

	dwrq->flags = 1;	/* active */

	FUNC1(LBS_DEB_WEXT);
	return 0;
}