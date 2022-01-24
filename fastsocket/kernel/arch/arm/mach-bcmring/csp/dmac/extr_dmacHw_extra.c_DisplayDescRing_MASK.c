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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  hi; int /*<<< orphan*/  lo; } ;
struct TYPE_6__ {int /*<<< orphan*/  devCtl; int /*<<< orphan*/  dstat; int /*<<< orphan*/  sstat; TYPE_1__ ctl; scalar_t__ llp; int /*<<< orphan*/  dar; int /*<<< orphan*/  sar; } ;
typedef  TYPE_2__ dmacHw_DESC_t ;
struct TYPE_7__ {TYPE_2__* pFree; TYPE_2__* pEnd; TYPE_2__* pProg; TYPE_2__* pTail; TYPE_2__* pHead; } ;
typedef  TYPE_3__ dmacHw_DESC_RING_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (void*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,...) ; 
 int FUNC3 (char const*,...) ; 
 int FUNC4 (char const*,...) ; 
 int FUNC5 (char const*,...) ; 
 int FUNC6 (char const*,...) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (char const*) ; 
 int FUNC12 (char const*) ; 
 int FUNC13 (char const*,...) ; 
 int FUNC14 (char const*,...) ; 
 int FUNC15 (char const*,...) ; 
 int FUNC16 (char const*,...) ; 
 int FUNC17 (char const*,...) ; 
 int FUNC18 (char const*,...) ; 
 int FUNC19 (char const*,...) ; 
 int FUNC20 (char const*,...) ; 
 int FUNC21 (char const*,...) ; 
 int FUNC22 (char const*) ; 
 int FUNC23 (char const*) ; 
 int FUNC24 (char const*) ; 
 int FUNC25 (char const*,...) ; 
 int FUNC26 (char const*,...) ; 
 int FUNC27 (char const*,...) ; 
 int FUNC28 (char const*,...) ; 

__attribute__((used)) static void FUNC29(void *pDescriptor,	/*   [ IN ] Descriptor buffer */
			    int (*fpPrint) (const char *, ...)	/*   [ IN ] Callback to the print function */
    ) {
	dmacHw_DESC_RING_t *pRing = FUNC0(pDescriptor);
	dmacHw_DESC_t *pStart;

	if (pRing->pHead == NULL) {
		return;
	}

	pStart = pRing->pHead;

	while ((dmacHw_DESC_t *) pStart->llp != pRing->pHead) {
		if (pStart == pRing->pHead) {
			(*fpPrint) ("Head\n");
		}
		if (pStart == pRing->pTail) {
			(*fpPrint) ("Tail\n");
		}
		if (pStart == pRing->pProg) {
			(*fpPrint) ("Prog\n");
		}
		if (pStart == pRing->pEnd) {
			(*fpPrint) ("End\n");
		}
		if (pStart == pRing->pFree) {
			(*fpPrint) ("Free\n");
		}
		(*fpPrint) ("0x%X:\n", (uint32_t) pStart);
		(*fpPrint) ("sar    0x%0X\n", pStart->sar);
		(*fpPrint) ("dar    0x%0X\n", pStart->dar);
		(*fpPrint) ("llp    0x%0X\n", pStart->llp);
		(*fpPrint) ("ctl.lo 0x%0X\n", pStart->ctl.lo);
		(*fpPrint) ("ctl.hi 0x%0X\n", pStart->ctl.hi);
		(*fpPrint) ("sstat  0x%0X\n", pStart->sstat);
		(*fpPrint) ("dstat  0x%0X\n", pStart->dstat);
		(*fpPrint) ("devCtl 0x%0X\n", pStart->devCtl);

		pStart = (dmacHw_DESC_t *) pStart->llp;
	}
	if (pStart == pRing->pHead) {
		(*fpPrint) ("Head\n");
	}
	if (pStart == pRing->pTail) {
		(*fpPrint) ("Tail\n");
	}
	if (pStart == pRing->pProg) {
		(*fpPrint) ("Prog\n");
	}
	if (pStart == pRing->pEnd) {
		(*fpPrint) ("End\n");
	}
	if (pStart == pRing->pFree) {
		(*fpPrint) ("Free\n");
	}
	(*fpPrint) ("0x%X:\n", (uint32_t) pStart);
	(*fpPrint) ("sar    0x%0X\n", pStart->sar);
	(*fpPrint) ("dar    0x%0X\n", pStart->dar);
	(*fpPrint) ("llp    0x%0X\n", pStart->llp);
	(*fpPrint) ("ctl.lo 0x%0X\n", pStart->ctl.lo);
	(*fpPrint) ("ctl.hi 0x%0X\n", pStart->ctl.hi);
	(*fpPrint) ("sstat  0x%0X\n", pStart->sstat);
	(*fpPrint) ("dstat  0x%0X\n", pStart->dstat);
	(*fpPrint) ("devCtl 0x%0X\n", pStart->devCtl);
}