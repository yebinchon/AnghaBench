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
struct soc_pcmcia_socket {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_PCMCIA_RESET ; 
 int /*<<< orphan*/  PCMCIA_S0_RDYINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  irqs ; 
 int FUNC4 (struct soc_pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct soc_pcmcia_socket *skt)
{
	int ret = FUNC3(GPIO_PCMCIA_RESET, "PCCard reset");
	if (ret)
		return ret;
	FUNC1(GPIO_PCMCIA_RESET, 0);

	skt->irq = PCMCIA_S0_RDYINT;
	ret = FUNC4(skt, irqs, FUNC0(irqs));
	if (!ret)
		FUNC2(GPIO_PCMCIA_RESET);

	return ret;
}