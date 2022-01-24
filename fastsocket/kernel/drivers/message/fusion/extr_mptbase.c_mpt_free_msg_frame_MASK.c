#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  FreeQlock; int /*<<< orphan*/  mfcnt; int /*<<< orphan*/  FreeQ; } ;
struct TYPE_10__ {int arg1; int /*<<< orphan*/  list; } ;
struct TYPE_8__ {TYPE_3__ linkage; } ;
struct TYPE_9__ {TYPE_1__ frame; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef  TYPE_4__ MPT_FRAME_HDR ;
typedef  TYPE_5__ MPT_ADAPTER ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(MPT_ADAPTER *ioc, MPT_FRAME_HDR *mf)
{
	unsigned long flags;

	/*  Put Request back on FreeQ!  */
	FUNC2(&ioc->FreeQlock, flags);
	if (FUNC0(mf->u.frame.linkage.arg1) == 0xdeadbeaf)
		goto out;
	/* signature to know if this mf is freed */
	mf->u.frame.linkage.arg1 = FUNC0(0xdeadbeaf);
	FUNC1(&mf->u.frame.linkage.list, &ioc->FreeQ);
#ifdef MFCNT
	ioc->mfcnt--;
#endif
 out:
	FUNC3(&ioc->FreeQlock, flags);
}