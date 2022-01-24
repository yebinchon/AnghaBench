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
struct soc_pcmcia_socket {scalar_t__ nr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_GPIO_H3600_PCMCIA_IRQ0 ; 
 int /*<<< orphan*/  IRQ_GPIO_H3600_PCMCIA_IRQ1 ; 
 int /*<<< orphan*/  irqs ; 
 int FUNC1 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct soc_pcmcia_socket *skt)
{
	skt->irq = skt->nr ? IRQ_GPIO_H3600_PCMCIA_IRQ1
			   : IRQ_GPIO_H3600_PCMCIA_IRQ0;


	return FUNC1(skt, irqs, FUNC0(irqs));
}