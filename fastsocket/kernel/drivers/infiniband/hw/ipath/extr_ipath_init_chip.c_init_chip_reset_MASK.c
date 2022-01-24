#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ipath_devdata {unsigned long long ipath_rcvctrl; unsigned long long ipath_r_tailupd_shift; int ipath_portcnt; unsigned int ipath_sendctrl; scalar_t__ ipath_rcvtidcnt; scalar_t__ ipath_rcvtidbase; scalar_t__ ipath_rcvegrcnt; scalar_t__ ipath_rcvegrbase; TYPE_2__* pcidev; TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_sendctrl_lock; scalar_t__ ipath_r_intravail_shift; scalar_t__ ipath_r_portenable_shift; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kr_rcvegrbase; int /*<<< orphan*/  kr_rcvegrcnt; int /*<<< orphan*/  kr_rcvtidbase; int /*<<< orphan*/  kr_rcvtidcnt; int /*<<< orphan*/  kr_control; int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; int /*<<< orphan*/  kr_rcvctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct ipath_devdata *dd)
{
	u32 rtmp;
	int i;
	unsigned long flags;

	/*
	 * ensure chip does no sends or receives, tail updates, or
	 * pioavail updates while we re-initialize
	 */
	dd->ipath_rcvctrl &= ~(1ULL << dd->ipath_r_tailupd_shift);
	for (i = 0; i < dd->ipath_portcnt; i++) {
		FUNC0(dd->ipath_r_portenable_shift + i,
			  &dd->ipath_rcvctrl);
		FUNC0(dd->ipath_r_intravail_shift + i,
			  &dd->ipath_rcvctrl);
	}
	FUNC4(dd, dd->ipath_kregs->kr_rcvctrl,
		dd->ipath_rcvctrl);

	FUNC5(&dd->ipath_sendctrl_lock, flags);
	dd->ipath_sendctrl = 0U; /* no sdma, etc */
	FUNC4(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
	FUNC3(dd, dd->ipath_kregs->kr_scratch);
	FUNC6(&dd->ipath_sendctrl_lock, flags);

	FUNC4(dd, dd->ipath_kregs->kr_control, 0ULL);

	rtmp = FUNC2(dd, dd->ipath_kregs->kr_rcvtidcnt);
	if (rtmp != dd->ipath_rcvtidcnt)
		FUNC1(&dd->pcidev->dev, "tidcnt was %u before "
			 "reset, now %u, using original\n",
			 dd->ipath_rcvtidcnt, rtmp);
	rtmp = FUNC2(dd, dd->ipath_kregs->kr_rcvtidbase);
	if (rtmp != dd->ipath_rcvtidbase)
		FUNC1(&dd->pcidev->dev, "tidbase was %u before "
			 "reset, now %u, using original\n",
			 dd->ipath_rcvtidbase, rtmp);
	rtmp = FUNC2(dd, dd->ipath_kregs->kr_rcvegrcnt);
	if (rtmp != dd->ipath_rcvegrcnt)
		FUNC1(&dd->pcidev->dev, "egrcnt was %u before "
			 "reset, now %u, using original\n",
			 dd->ipath_rcvegrcnt, rtmp);
	rtmp = FUNC2(dd, dd->ipath_kregs->kr_rcvegrbase);
	if (rtmp != dd->ipath_rcvegrbase)
		FUNC1(&dd->pcidev->dev, "egrbase was %u before "
			 "reset, now %u, using original\n",
			 dd->ipath_rcvegrbase, rtmp);

	return 0;
}