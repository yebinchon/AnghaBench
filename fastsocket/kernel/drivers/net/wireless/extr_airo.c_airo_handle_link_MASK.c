#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
typedef  scalar_t__ u16 ;
struct airo_info {scalar_t__ scan_timeout; TYPE_2__* dev; int /*<<< orphan*/  thr_wait; scalar_t__ expires; int /*<<< orphan*/  jobs; int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; scalar_t__ list_bss_task; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  EVACK ; 
 int /*<<< orphan*/  EV_LINK ; 
 int /*<<< orphan*/  FLAG_UPDATE_MULTI ; 
 int /*<<< orphan*/  FLAG_UPDATE_UNI ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB_EVENT ; 
 int /*<<< orphan*/  LINKSTAT ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 scalar_t__ STAT_ASSOC ; 
 scalar_t__ STAT_FORCELOSS ; 
 scalar_t__ STAT_REASSOC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ auto_wep ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct airo_info *ai)
{
	union iwreq_data wrqu;
	int scan_forceloss = 0;
	u16 status;

	/* Get new status and acknowledge the link change */
	status = FUNC6(FUNC0(ai, LINKSTAT));
	FUNC1(ai, EVACK, EV_LINK);

	if ((status == STAT_FORCELOSS) && (ai->scan_timeout > 0))
		scan_forceloss = 1;

	FUNC3(ai->dev->name, status);

	if ((status == STAT_ASSOC) || (status == STAT_REASSOC)) {
		if (auto_wep)
			ai->expires = 0;
		if (ai->list_bss_task)
			FUNC10(ai->list_bss_task);
		FUNC8(FLAG_UPDATE_UNI, &ai->flags);
		FUNC8(FLAG_UPDATE_MULTI, &ai->flags);

		if (FUNC5(&ai->sem) != 0) {
			FUNC8(JOB_EVENT, &ai->jobs);
			FUNC9(&ai->thr_wait);
		} else
			FUNC4(ai->dev);
	} else if (!scan_forceloss) {
		if (auto_wep && !ai->expires) {
			ai->expires = FUNC2(3*HZ);
			FUNC9(&ai->thr_wait);
		}

		/* Send event to user space */
		FUNC7(wrqu.ap_addr.sa_data, '\0', ETH_ALEN);
		wrqu.ap_addr.sa_family = ARPHRD_ETHER;
		FUNC11(ai->dev, SIOCGIWAP, &wrqu, NULL);
	}
}