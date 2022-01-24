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
struct ipath_devdata {int ipath_control; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_control; int /*<<< orphan*/  kr_xgxsconfig; int /*<<< orphan*/  kr_scratch; } ;

/* Variables and functions */
 int INFINIPATH_C_LINKENABLE ; 
 int INFINIPATH_XGXS_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ipath_devdata *dd)
{
	u64 val, prev_val;

	prev_val = FUNC1(dd, dd->ipath_kregs->kr_xgxsconfig);
	val = prev_val | INFINIPATH_XGXS_RESET;
	prev_val &= ~INFINIPATH_XGXS_RESET; /* be sure */
	FUNC2(dd, dd->ipath_kregs->kr_control,
			 dd->ipath_control & ~INFINIPATH_C_LINKENABLE);
	FUNC2(dd, dd->ipath_kregs->kr_xgxsconfig, val);
	FUNC0(dd, dd->ipath_kregs->kr_scratch);
	FUNC2(dd, dd->ipath_kregs->kr_xgxsconfig, prev_val);
	FUNC2(dd, dd->ipath_kregs->kr_control,
			 dd->ipath_control);
}