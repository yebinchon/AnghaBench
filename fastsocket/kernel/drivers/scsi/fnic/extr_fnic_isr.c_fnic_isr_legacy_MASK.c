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
typedef  int u32 ;
struct fnic {int /*<<< orphan*/ * intr; int /*<<< orphan*/  legacy_pba; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FNIC_INTX_ERR ; 
 int FNIC_INTX_NOTIFY ; 
 int FNIC_INTX_WQ_RQ_COPYWQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct fnic*) ; 
 int /*<<< orphan*/  FUNC1 (struct fnic*) ; 
 scalar_t__ FUNC2 (struct fnic*,int) ; 
 scalar_t__ FUNC3 (struct fnic*,int) ; 
 scalar_t__ FUNC4 (struct fnic*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct fnic *fnic = data;
	u32 pba;
	unsigned long work_done = 0;

	pba = FUNC5(fnic->legacy_pba);
	if (!pba)
		return IRQ_NONE;

	if (pba & (1 << FNIC_INTX_NOTIFY)) {
		FUNC6(&fnic->intr[FNIC_INTX_NOTIFY]);
		FUNC0(fnic);
	}

	if (pba & (1 << FNIC_INTX_ERR)) {
		FUNC6(&fnic->intr[FNIC_INTX_ERR]);
		FUNC1(fnic);
	}

	if (pba & (1 << FNIC_INTX_WQ_RQ_COPYWQ)) {
		work_done += FUNC4(fnic, -1);
		work_done += FUNC3(fnic, -1);
		work_done += FUNC2(fnic, -1);

		FUNC7(&fnic->intr[FNIC_INTX_WQ_RQ_COPYWQ],
					 work_done,
					 1 /* unmask intr */,
					 1 /* reset intr timer */);
	}

	return IRQ_HANDLED;
}