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
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct fnic*,int) ; 
 scalar_t__ FUNC1 (struct fnic*,int) ; 
 scalar_t__ FUNC2 (struct fnic*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct fnic *fnic = data;
	unsigned long work_done = 0;

	work_done += FUNC2(fnic, -1);
	work_done += FUNC1(fnic, -1);
	work_done += FUNC0(fnic, -1);

	FUNC3(&fnic->intr[0],
				 work_done,
				 1 /* unmask intr */,
				 1 /* reset intr timer */);

	return IRQ_HANDLED;
}