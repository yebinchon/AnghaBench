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
typedef  int u32 ;
struct ipath_devdata {int ipath_piobcnt2k; int ipath_piobcnt4k; scalar_t__ ipath_lastcancel; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {scalar_t__ kr_sendbuffererror; } ;

/* Variables and functions */
 int __IPATH_DBG ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,unsigned long) ; 
 int __IPATH_PKTDBG ; 
 int ipath_debug ; 
 int /*<<< orphan*/  FUNC1 (struct ipath_devdata*,int,int) ; 
 unsigned long FUNC2 (struct ipath_devdata*,scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int,unsigned long*) ; 

void FUNC5(struct ipath_devdata *dd)
{
	u32 piobcnt;
	unsigned long sbuf[4];
	/*
	 * it's possible that sendbuffererror could have bits set; might
	 * have already done this as a result of hardware error handling
	 */
	piobcnt = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;
	/* read these before writing errorclear */
	sbuf[0] = FUNC2(
		dd, dd->ipath_kregs->kr_sendbuffererror);
	sbuf[1] = FUNC2(
		dd, dd->ipath_kregs->kr_sendbuffererror + 1);
	if (piobcnt > 128)
		sbuf[2] = FUNC2(
			dd, dd->ipath_kregs->kr_sendbuffererror + 2);
	if (piobcnt > 192)
		sbuf[3] = FUNC2(
			dd, dd->ipath_kregs->kr_sendbuffererror + 3);
	else
		sbuf[3] = 0;

	if (sbuf[0] || sbuf[1] || (piobcnt > 128 && (sbuf[2] || sbuf[3]))) {
		int i;
		if (ipath_debug & (__IPATH_PKTDBG|__IPATH_DBG) &&
			dd->ipath_lastcancel > jiffies) {
			FUNC0(__IPATH_PKTDBG|__IPATH_DBG,
					  "SendbufErrs %lx %lx", sbuf[0],
					  sbuf[1]);
			if (ipath_debug & __IPATH_PKTDBG && piobcnt > 128)
				FUNC3(" %lx %lx ", sbuf[2], sbuf[3]);
			FUNC3("\n");
		}

		for (i = 0; i < piobcnt; i++)
			if (FUNC4(i, sbuf))
				FUNC1(dd, i, 1);
		/* ignore armlaunch errs for a bit */
		dd->ipath_lastcancel = jiffies+3;
	}
}