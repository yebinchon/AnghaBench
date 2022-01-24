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
struct ipath_devdata {int ipath_sdma_descq_tail; int ipath_sdma_descq_phys; int ipath_sdma_descq_cnt; int ipath_sdma_head_phys; unsigned int ipath_piobcnt2k; unsigned int ipath_piobcnt4k; unsigned int ipath_lastport_piobuf; unsigned int ipath_pioreserved; int ipath_sendctrl; int /*<<< orphan*/  ipath_sendctrl_lock; int /*<<< orphan*/  ipath_sdma_status; TYPE_1__* ipath_kregs; int /*<<< orphan*/  ipath_sdma_abort_task; int /*<<< orphan*/  ipath_sdma_notify_task; int /*<<< orphan*/  ipath_sdma_notifylist; int /*<<< orphan*/  ipath_sdma_activelist; scalar_t__ ipath_sdma_descq_added; scalar_t__ ipath_sdma_descq_removed; scalar_t__ ipath_sdma_descq_head; scalar_t__ ipath_sdma_generation; scalar_t__ ipath_sdma_abort_jiffies; int /*<<< orphan*/  ipath_sdma_descq; } ;
struct TYPE_2__ {int /*<<< orphan*/  kr_scratch; int /*<<< orphan*/  kr_sendctrl; int /*<<< orphan*/  kr_senddmabufmask2; int /*<<< orphan*/  kr_senddmabufmask1; int /*<<< orphan*/  kr_senddmabufmask0; int /*<<< orphan*/  kr_senddmaheadaddr; int /*<<< orphan*/  kr_senddmatail; int /*<<< orphan*/  kr_senddmalengen; int /*<<< orphan*/  kr_senddmabase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INFINIPATH_S_SDMAINTENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPATH_SDMA_ABORT_ABORTED ; 
 int /*<<< orphan*/  IPATH_SDMA_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipath_devdata*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdma_abort_task ; 
 int /*<<< orphan*/  sdma_notify_task ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC11(struct ipath_devdata *dd)
{
	int ret = 0;
	unsigned i, n;
	u64 tmp64;
	u64 senddmabufmask[3] = { 0 };
	unsigned long flags;

	ret = FUNC3(dd);
	if (ret)
		goto done;

	if (!dd->ipath_sdma_descq) {
		FUNC5(dd, "SendDMA memory not allocated\n");
		goto done;
	}

	/*
	 * Set initial status as if we had been up, then gone down.
	 * This lets initial start on transition to ACTIVE be the
	 * same as restart after link flap.
	 */
	dd->ipath_sdma_status = IPATH_SDMA_ABORT_ABORTED;
	dd->ipath_sdma_abort_jiffies = 0;
	dd->ipath_sdma_generation = 0;
	dd->ipath_sdma_descq_tail = 0;
	dd->ipath_sdma_descq_head = 0;
	dd->ipath_sdma_descq_removed = 0;
	dd->ipath_sdma_descq_added = 0;

	/* Set SendDmaBase */
	FUNC7(dd, dd->ipath_kregs->kr_senddmabase,
			 dd->ipath_sdma_descq_phys);
	/* Set SendDmaLenGen */
	tmp64 = dd->ipath_sdma_descq_cnt;
	tmp64 |= 1<<18; /* enable generation checking */
	FUNC7(dd, dd->ipath_kregs->kr_senddmalengen, tmp64);
	/* Set SendDmaTail */
	FUNC7(dd, dd->ipath_kregs->kr_senddmatail,
			 dd->ipath_sdma_descq_tail);
	/* Set SendDmaHeadAddr */
	FUNC7(dd, dd->ipath_kregs->kr_senddmaheadaddr,
			 dd->ipath_sdma_head_phys);

	/*
	 * Reserve all the former "kernel" piobufs, using high number range
	 * so we get as many 4K buffers as possible
	 */
	n = dd->ipath_piobcnt2k + dd->ipath_piobcnt4k;
	i = dd->ipath_lastport_piobuf + dd->ipath_pioreserved;
	FUNC4(dd, i, n - i , 0);
	for (; i < n; ++i) {
		unsigned word = i / 64;
		unsigned bit = i & 63;
		FUNC0(word >= 3);
		senddmabufmask[word] |= 1ULL << bit;
	}
	FUNC7(dd, dd->ipath_kregs->kr_senddmabufmask0,
			 senddmabufmask[0]);
	FUNC7(dd, dd->ipath_kregs->kr_senddmabufmask1,
			 senddmabufmask[1]);
	FUNC7(dd, dd->ipath_kregs->kr_senddmabufmask2,
			 senddmabufmask[2]);

	FUNC1(&dd->ipath_sdma_activelist);
	FUNC1(&dd->ipath_sdma_notifylist);

	FUNC10(&dd->ipath_sdma_notify_task, sdma_notify_task,
		     (unsigned long) dd);
	FUNC10(&dd->ipath_sdma_abort_task, sdma_abort_task,
		     (unsigned long) dd);

	/*
	 * No use to turn on SDMA here, as link is probably not ACTIVE
	 * Just mark it RUNNING and enable the interrupt, and let the
	 * ipath_restart_sdma() on link transition to ACTIVE actually
	 * enable it.
	 */
	FUNC8(&dd->ipath_sendctrl_lock, flags);
	dd->ipath_sendctrl |= INFINIPATH_S_SDMAINTENABLE;
	FUNC7(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
	FUNC6(dd, dd->ipath_kregs->kr_scratch);
	FUNC2(IPATH_SDMA_RUNNING, &dd->ipath_sdma_status);
	FUNC9(&dd->ipath_sendctrl_lock, flags);

done:
	return ret;
}