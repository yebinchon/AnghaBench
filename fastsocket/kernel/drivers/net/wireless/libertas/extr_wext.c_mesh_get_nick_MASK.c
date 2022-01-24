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
struct lbs_private {scalar_t__ mesh_connect_status; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_WEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct iw_request_info *info,
			 struct iw_point *dwrq, char *extra)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC0(LBS_DEB_WEXT);

	/* Use nickname to indicate that mesh is on */

	if (priv->mesh_connect_status == LBS_CONNECTED) {
		FUNC3(extra, "Mesh", 12);
		extra[12] = '\0';
		dwrq->length = FUNC2(extra);
	}

	else {
		extra[0] = '\0';
		dwrq->length = 0;
	}

	FUNC1(LBS_DEB_WEXT);
	return 0;
}