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
struct bnx2 {int irq_nvecs; TYPE_1__* irq_tbl; int /*<<< orphan*/  dev; int /*<<< orphan*/  intr_sem; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bnx2 *bp)
{
	int i;

	FUNC0(&bp->intr_sem);
	if (!FUNC2(bp->dev))
		return;

	FUNC1(bp);
	for (i = 0; i < bp->irq_nvecs; i++)
		FUNC3(bp->irq_tbl[i].vector);
}