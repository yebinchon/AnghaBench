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
struct omap_mbox {TYPE_1__* ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* shutdown ) (struct omap_mbox*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  (*) (struct omap_mbox*)) ; 

__attribute__((used)) static void FUNC4(struct omap_mbox *mbox)
{
	FUNC1(mbox->txq);
	FUNC1(mbox->rxq);

	FUNC0(mbox->irq, mbox);

	if (FUNC3(mbox->ops->shutdown))
		mbox->ops->shutdown(mbox);
}