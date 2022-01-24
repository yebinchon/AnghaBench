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
struct soc_pcmcia_socket {size_t nr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_E740_PCMCIA_RDY0 ; 
 int /*<<< orphan*/  GPIO_E740_PCMCIA_RDY1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cd_irqs ; 
 int FUNC1 (struct soc_pcmcia_socket*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct soc_pcmcia_socket *skt)
{
	skt->irq = skt->nr == 0 ? FUNC0(GPIO_E740_PCMCIA_RDY0) :
				FUNC0(GPIO_E740_PCMCIA_RDY1);

	return FUNC1(skt, &cd_irqs[skt->nr], 1);
}