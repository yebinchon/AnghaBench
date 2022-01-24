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
struct fnic {int /*<<< orphan*/ * intr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 size_t FNIC_MSIX_WQ_COPY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long FUNC0 (struct fnic*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct fnic *fnic = data;
	unsigned long wq_copy_work_done = 0;

	wq_copy_work_done = FUNC0(fnic, -1);
	FUNC1(&fnic->intr[FNIC_MSIX_WQ_COPY],
				 wq_copy_work_done,
				 1 /* unmask intr */,
				 1 /* reset intr timer */);
	return IRQ_HANDLED;
}