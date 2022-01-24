#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  fifo; } ;
struct parport_ip32_private {int /*<<< orphan*/  irq_mode; TYPE_1__ regs; } ;
struct parport {scalar_t__ irq; TYPE_2__* physport; } ;
struct TYPE_4__ {struct parport_ip32_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARPORT_IP32_IRQ_FWD ; 
 int /*<<< orphan*/  PARPORT_IP32_IRQ_HERE ; 
 scalar_t__ PARPORT_IRQ_NONE ; 
 unsigned int FUNC0 (struct parport*) ; 
 unsigned int FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static size_t FUNC4(struct parport *p,
						const void *buf, size_t len)
{
	struct parport_ip32_private * const priv = p->physport->private_data;
	const u8 *bufp = buf;
	size_t left = len;

	priv->irq_mode = PARPORT_IP32_IRQ_HERE;

	while (left > 0) {
		unsigned int count;

		count = (p->irq == PARPORT_IRQ_NONE) ?
			FUNC1(p) :
			FUNC0(p);
		if (count == 0)
			break;	/* Transmission should be stopped */
		if (count > left)
			count = left;
		if (count == 1) {
			FUNC2(*bufp, priv->regs.fifo);
			bufp++, left--;
		} else {
			FUNC3(priv->regs.fifo, bufp, count);
			bufp += count, left -= count;
		}
	}

	priv->irq_mode = PARPORT_IP32_IRQ_FWD;

	return len - left;
}