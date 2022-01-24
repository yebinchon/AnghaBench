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
typedef  int u64 ;
typedef  int u16 ;
struct qib_pportdata {TYPE_1__* cpspec; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;
struct TYPE_2__ {int ibcctrl; } ;

/* Variables and functions */
 int IBA7220_IBCC_LINKCMD_SHIFT ; 
 int /*<<< orphan*/  QIBL_IB_LINK_DISABLED ; 
 int QLOGIC_IB_IBCC_LINKCMD_DOWN ; 
 int QLOGIC_IB_IBCC_LINKINITCMD_DISABLE ; 
 int QLOGIC_IB_IBCC_LINKINITCMD_SHIFT ; 
 int /*<<< orphan*/  kr_ibcctrl ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct qib_pportdata *ppd, u16 linkcmd,
				   u16 linitcmd)
{
	u64 mod_wd;
	struct qib_devdata *dd = ppd->dd;
	unsigned long flags;

	if (linitcmd == QLOGIC_IB_IBCC_LINKINITCMD_DISABLE) {
		/*
		 * If we are told to disable, note that so link-recovery
		 * code does not attempt to bring us back up.
		 */
		FUNC1(&ppd->lflags_lock, flags);
		ppd->lflags |= QIBL_IB_LINK_DISABLED;
		FUNC2(&ppd->lflags_lock, flags);
	} else if (linitcmd || linkcmd == QLOGIC_IB_IBCC_LINKCMD_DOWN) {
		/*
		 * Any other linkinitcmd will lead to LINKDOWN and then
		 * to INIT (if all is well), so clear flag to let
		 * link-recovery code attempt to bring us back up.
		 */
		FUNC1(&ppd->lflags_lock, flags);
		ppd->lflags &= ~QIBL_IB_LINK_DISABLED;
		FUNC2(&ppd->lflags_lock, flags);
	}

	mod_wd = (linkcmd << IBA7220_IBCC_LINKCMD_SHIFT) |
		(linitcmd << QLOGIC_IB_IBCC_LINKINITCMD_SHIFT);

	FUNC0(dd, kr_ibcctrl, ppd->cpspec->ibcctrl | mod_wd);
	/* write to chip to prevent back-to-back writes of ibc reg */
	FUNC0(dd, kr_scratch, 0);
}