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
struct mpic {int flags; int /*<<< orphan*/  msi_bitmap; TYPE_1__* irqhost; int /*<<< orphan*/  irq_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int MPIC_U3_HT_IRQS ; 
 int FUNC0 (struct mpic*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mpic *mpic)
{
	int rc;

	rc = FUNC1(&mpic->msi_bitmap, mpic->irq_count,
			      mpic->irqhost->of_node);
	if (rc)
		return rc;

	rc = FUNC3(&mpic->msi_bitmap);
	if (rc > 0) {
		if (mpic->flags & MPIC_U3_HT_IRQS)
			rc = FUNC0(mpic);

		if (rc) {
			FUNC2(&mpic->msi_bitmap);
			return rc;
		}
	}

	return 0;
}