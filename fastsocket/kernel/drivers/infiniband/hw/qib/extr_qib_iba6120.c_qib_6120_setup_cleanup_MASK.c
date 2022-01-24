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
typedef  int /*<<< orphan*/  u32 ;
struct qib_devdata {int rcvhdrcnt; int rcvhdrentsize; TYPE_2__* cspec; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dummy_hdrq; int /*<<< orphan*/  dummy_hdrq_phys; int /*<<< orphan*/  portcntrs; int /*<<< orphan*/  cntrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 

__attribute__((used)) static void FUNC4(struct qib_devdata *dd)
{
	FUNC3(dd);
	FUNC2(dd->cspec->cntrs);
	FUNC2(dd->cspec->portcntrs);
	if (dd->cspec->dummy_hdrq) {
		FUNC1(&dd->pcidev->dev,
				  FUNC0(dd->rcvhdrcnt *
					dd->rcvhdrentsize *
					sizeof(u32), PAGE_SIZE),
				  dd->cspec->dummy_hdrq,
				  dd->cspec->dummy_hdrq_phys);
		dd->cspec->dummy_hdrq = NULL;
	}
}