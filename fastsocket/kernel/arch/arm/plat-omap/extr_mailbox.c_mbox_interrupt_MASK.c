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
struct omap_mbox {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_RX ; 
 int /*<<< orphan*/  IRQ_TX ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mbox*) ; 
 scalar_t__ FUNC2 (struct omap_mbox*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *p)
{
	struct omap_mbox *mbox = p;

	if (FUNC2(mbox, IRQ_TX))
		FUNC1(mbox);

	if (FUNC2(mbox, IRQ_RX))
		FUNC0(mbox);

	return IRQ_HANDLED;
}