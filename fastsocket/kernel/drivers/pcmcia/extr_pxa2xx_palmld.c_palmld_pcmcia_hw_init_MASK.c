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
 int /*<<< orphan*/  GPIO_NR_PALMLD_PCMCIA_POWER ; 
 int /*<<< orphan*/  GPIO_NR_PALMLD_PCMCIA_READY ; 
 int /*<<< orphan*/  GPIO_NR_PALMLD_PCMCIA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct soc_pcmcia_socket *skt)
{
	int ret;

	ret = FUNC4(GPIO_NR_PALMLD_PCMCIA_POWER, "PCMCIA PWR");
	if (ret)
		goto err1;
	ret = FUNC2(GPIO_NR_PALMLD_PCMCIA_POWER, 0);
	if (ret)
		goto err2;

	ret = FUNC4(GPIO_NR_PALMLD_PCMCIA_RESET, "PCMCIA RST");
	if (ret)
		goto err2;
	ret = FUNC2(GPIO_NR_PALMLD_PCMCIA_RESET, 1);
	if (ret)
		goto err3;

	ret = FUNC4(GPIO_NR_PALMLD_PCMCIA_READY, "PCMCIA RDY");
	if (ret)
		goto err3;
	ret = FUNC1(GPIO_NR_PALMLD_PCMCIA_READY);
	if (ret)
		goto err4;

	skt->irq = FUNC0(GPIO_NR_PALMLD_PCMCIA_READY);
	return 0;

err4:
	FUNC3(GPIO_NR_PALMLD_PCMCIA_READY);
err3:
	FUNC3(GPIO_NR_PALMLD_PCMCIA_RESET);
err2:
	FUNC3(GPIO_NR_PALMLD_PCMCIA_POWER);
err1:
	return ret;
}