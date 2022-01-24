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
struct parport_ip32_private {int irq_mode; } ;
struct parport {TYPE_1__* physport; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum parport_ip32_irq_mode { ____Placeholder_parport_ip32_irq_mode } parport_ip32_irq_mode ;
struct TYPE_2__ {struct parport_ip32_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  PARPORT_IP32_IRQ_FWD 129 
#define  PARPORT_IP32_IRQ_HERE 128 
 int /*<<< orphan*/  FUNC0 (struct parport* const) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct parport * const p = dev_id;
	struct parport_ip32_private * const priv = p->physport->private_data;
	enum parport_ip32_irq_mode irq_mode = priv->irq_mode;

	switch (irq_mode) {
	case PARPORT_IP32_IRQ_FWD:
		return FUNC1(irq, dev_id);

	case PARPORT_IP32_IRQ_HERE:
		FUNC0(p);
		break;
	}

	return IRQ_HANDLED;
}