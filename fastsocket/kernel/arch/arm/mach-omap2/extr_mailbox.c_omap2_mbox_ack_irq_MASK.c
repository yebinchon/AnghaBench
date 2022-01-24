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
typedef  int /*<<< orphan*/  u32 ;
struct omap_mbox2_priv {int /*<<< orphan*/  irqstatus; int /*<<< orphan*/  newmsg_bit; int /*<<< orphan*/  notfull_bit; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef  scalar_t__ omap_mbox_type_t ;

/* Variables and functions */
 scalar_t__ IRQ_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_mbox *mbox,
		omap_mbox_type_t irq)
{
	struct omap_mbox2_priv *p = (struct omap_mbox2_priv *)mbox->priv;
	u32 bit = (irq == IRQ_TX) ? p->notfull_bit : p->newmsg_bit;

	FUNC1(bit, p->irqstatus);

	/* Flush posted write for irq status to avoid spurious interrupts */
	FUNC0(p->irqstatus);
}