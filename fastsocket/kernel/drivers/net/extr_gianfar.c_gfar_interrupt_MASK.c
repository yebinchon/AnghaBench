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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct gfar_private {TYPE_1__* regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ievent; } ;

/* Variables and functions */
 int IEVENT_ERR_MASK ; 
 int IEVENT_RX_MASK ; 
 int IEVENT_TX_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 struct gfar_private* FUNC4 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct gfar_private *priv = FUNC4(dev);

	/* Save ievent for future reference */
	u32 events = FUNC1(&priv->regs->ievent);

	/* Check for reception */
	if (events & IEVENT_RX_MASK)
		FUNC2(irq, dev_id);

	/* Check for transmit completion */
	if (events & IEVENT_TX_MASK)
		FUNC3(irq, dev_id);

	/* Check for errors */
	if (events & IEVENT_ERR_MASK)
		FUNC0(irq, dev_id);

	return IRQ_HANDLED;
}