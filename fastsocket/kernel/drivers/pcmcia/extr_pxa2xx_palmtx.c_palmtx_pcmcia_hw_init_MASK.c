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
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_POWER1 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_POWER2 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_READY ; 
 int /*<<< orphan*/  GPIO_NR_PALMTX_PCMCIA_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct soc_pcmcia_socket *skt)
{
	int ret;

	ret = FUNC3(GPIO_NR_PALMTX_PCMCIA_POWER1, "PCMCIA PWR1");
	if (ret)
		goto err1;
	ret = FUNC1(GPIO_NR_PALMTX_PCMCIA_POWER1, 0);
	if (ret)
		goto err2;

	ret = FUNC3(GPIO_NR_PALMTX_PCMCIA_POWER2, "PCMCIA PWR2");
	if (ret)
		goto err2;
	ret = FUNC1(GPIO_NR_PALMTX_PCMCIA_POWER2, 0);
	if (ret)
		goto err3;

	ret = FUNC3(GPIO_NR_PALMTX_PCMCIA_RESET, "PCMCIA RST");
	if (ret)
		goto err3;
	ret = FUNC1(GPIO_NR_PALMTX_PCMCIA_RESET, 1);
	if (ret)
		goto err4;

	ret = FUNC3(GPIO_NR_PALMTX_PCMCIA_READY, "PCMCIA RDY");
	if (ret)
		goto err4;
	ret = FUNC0(GPIO_NR_PALMTX_PCMCIA_READY);
	if (ret)
		goto err5;

	skt->irq = FUNC4(GPIO_NR_PALMTX_PCMCIA_READY);
	return 0;

err5:
	FUNC2(GPIO_NR_PALMTX_PCMCIA_READY);
err4:
	FUNC2(GPIO_NR_PALMTX_PCMCIA_RESET);
err3:
	FUNC2(GPIO_NR_PALMTX_PCMCIA_POWER2);
err2:
	FUNC2(GPIO_NR_PALMTX_PCMCIA_POWER1);
err1:
	return ret;
}