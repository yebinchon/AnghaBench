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
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * cq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int FUNC0 (struct enic*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct enic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enic_wq_service ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct enic *enic = data;
	unsigned int cq = FUNC0(enic, 0);
	unsigned int intr = FUNC1(enic, 0);
	unsigned int wq_work_to_do = -1; /* no limit */
	unsigned int wq_work_done;

	wq_work_done = FUNC2(&enic->cq[cq],
		wq_work_to_do, enic_wq_service, NULL);

	FUNC3(&enic->intr[intr],
		wq_work_done,
		1 /* unmask intr */,
		1 /* reset intr timer */);

	return IRQ_HANDLED;
}