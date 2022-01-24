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
struct tg3 {int /*<<< orphan*/  grc_local_ctrl; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5717 ; 
 scalar_t__ ASIC_REV_5719 ; 
 scalar_t__ ASIC_REV_5720 ; 
 int EIO ; 
 int /*<<< orphan*/  GRC_LOCAL_CTRL ; 
 int /*<<< orphan*/  IS_NIC ; 
 int /*<<< orphan*/  TG3_APE_LOCK_GPIO ; 
 int /*<<< orphan*/  TG3_GPIO_MSG_DRVR_PRES ; 
 int /*<<< orphan*/  TG3_GRC_LCLCTL_PWRSW_DELAY ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct tg3 *tp)
{
	if (!FUNC3(tp, IS_NIC))
		return 0;

	if (FUNC2(tp) == ASIC_REV_5717 ||
	    FUNC2(tp) == ASIC_REV_5719 ||
	    FUNC2(tp) == ASIC_REV_5720) {
		if (FUNC0(tp, TG3_APE_LOCK_GPIO))
			return -EIO;

		FUNC4(tp, TG3_GPIO_MSG_DRVR_PRES);

		FUNC5(GRC_LOCAL_CTRL, tp->grc_local_ctrl,
			    TG3_GRC_LCLCTL_PWRSW_DELAY);

		FUNC1(tp, TG3_APE_LOCK_GPIO);
	} else {
		FUNC5(GRC_LOCAL_CTRL, tp->grc_local_ctrl,
			    TG3_GRC_LCLCTL_PWRSW_DELAY);
	}

	return 0;
}