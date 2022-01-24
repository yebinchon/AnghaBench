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
struct soc_pcmcia_socket {scalar_t__ irq; scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRQ_S0_READY_NINT ; 
 scalar_t__ IRQ_S1_READY_NINT ; 
 scalar_t__ NO_IRQ ; 
 int /*<<< orphan*/  irqs ; 
 int FUNC1 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct soc_pcmcia_socket *skt)
{
	if (skt->irq == NO_IRQ)
		skt->irq = skt->nr ? IRQ_S1_READY_NINT : IRQ_S0_READY_NINT;

	return FUNC1(skt, irqs, FUNC0(irqs));
}