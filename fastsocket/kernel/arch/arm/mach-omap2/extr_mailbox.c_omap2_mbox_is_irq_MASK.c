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
struct omap_mbox2_priv {int notfull_bit; int newmsg_bit; int /*<<< orphan*/  irqstatus; int /*<<< orphan*/  irqenable; } ;
struct omap_mbox {scalar_t__ priv; } ;
typedef  scalar_t__ omap_mbox_type_t ;

/* Variables and functions */
 scalar_t__ IRQ_TX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct omap_mbox *mbox,
		omap_mbox_type_t irq)
{
	struct omap_mbox2_priv *p = (struct omap_mbox2_priv *)mbox->priv;
	u32 bit = (irq == IRQ_TX) ? p->notfull_bit : p->newmsg_bit;
	u32 enable = FUNC0(p->irqenable);
	u32 status = FUNC0(p->irqstatus);

	return (enable & status & bit);
}