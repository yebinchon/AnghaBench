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
struct qib_pportdata {TYPE_1__* cpspec; int /*<<< orphan*/  lflags_lock; int /*<<< orphan*/  lflags; } ;
struct TYPE_2__ {int /*<<< orphan*/  autoneg_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  QIBL_IB_AUTONEG_INPROG ; 
 int /*<<< orphan*/  QIB_IB_DDR ; 
 int /*<<< orphan*/  ib_wq ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_pportdata *ppd)
{
	unsigned long flags;

	FUNC5(&ppd->lflags_lock, flags);
	ppd->lflags |= QIBL_IB_AUTONEG_INPROG;
	FUNC6(&ppd->lflags_lock, flags);
	FUNC2(ppd, 0);
	FUNC4(ppd, QIB_IB_DDR);
	FUNC1(ppd);
	/* 2 msec is minimum length of a poll cycle */
	FUNC3(ib_wq, &ppd->cpspec->autoneg_work,
			   FUNC0(2));
}