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
struct soc_pcmcia_socket {scalar_t__ nr; } ;
struct pcmcia_irqs {scalar_t__ sock; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct soc_pcmcia_socket *skt,
			    struct pcmcia_irqs *irqs, int nr)
{
	int i;

	for (i = 0; i < nr; i++)
		if (irqs[i].sock == skt->nr) {
			FUNC0(irqs[i].irq, IRQ_TYPE_EDGE_RISING);
			FUNC0(irqs[i].irq, IRQ_TYPE_EDGE_BOTH);
		}
}