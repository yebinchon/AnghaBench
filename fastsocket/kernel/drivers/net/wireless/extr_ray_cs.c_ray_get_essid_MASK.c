#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int /*<<< orphan*/  a_current_ess_id; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {TYPE_2__ sparm; } ;
typedef  TYPE_3__ ray_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			 struct iw_request_info *info,
			 struct iw_point *dwrq, char *extra)
{
	ray_dev_t *local = FUNC1(dev);

	/* Get the essid that was set */
	FUNC0(extra, local->sparm.b5.a_current_ess_id, IW_ESSID_MAX_SIZE);

	/* Push it out ! */
	dwrq->length = FUNC2(extra);
	dwrq->flags = 1;	/* active */

	return 0;
}