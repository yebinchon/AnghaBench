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
struct lbs_private {scalar_t__ psmode; scalar_t__ connect_status; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; scalar_t__ flags; scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ LBS802_11POWERMODECAM ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 scalar_t__ LBS_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct iw_request_info *info,
			  struct iw_param *vwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_WEXT);

	vwrq->value = 0;
	vwrq->flags = 0;
	vwrq->disabled = priv->psmode == LBS802_11POWERMODECAM
		|| priv->connect_status == LBS_DISCONNECTED;

	FUNC1(LBS_DEB_WEXT);
	return 0;
}