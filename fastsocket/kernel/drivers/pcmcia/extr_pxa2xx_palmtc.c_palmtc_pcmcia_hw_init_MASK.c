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
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER1 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER2 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER3 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_PWRREADY ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_READY ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct soc_pcmcia_socket *skt)
{
	int ret;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_POWER1, "PCMCIA PWR1");
	if (ret)
		goto err1;
	ret = FUNC2(GPIO_NR_PALMTC_PCMCIA_POWER1, 0);
	if (ret)
		goto err2;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_POWER2, "PCMCIA PWR2");
	if (ret)
		goto err2;
	ret = FUNC2(GPIO_NR_PALMTC_PCMCIA_POWER2, 0);
	if (ret)
		goto err3;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_POWER3, "PCMCIA PWR3");
	if (ret)
		goto err3;
	ret = FUNC2(GPIO_NR_PALMTC_PCMCIA_POWER3, 0);
	if (ret)
		goto err4;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_RESET, "PCMCIA RST");
	if (ret)
		goto err4;
	ret = FUNC2(GPIO_NR_PALMTC_PCMCIA_RESET, 1);
	if (ret)
		goto err5;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_READY, "PCMCIA RDY");
	if (ret)
		goto err5;
	ret = FUNC1(GPIO_NR_PALMTC_PCMCIA_READY);
	if (ret)
		goto err6;

	ret = FUNC4(GPIO_NR_PALMTC_PCMCIA_PWRREADY, "PCMCIA PWRRDY");
	if (ret)
		goto err6;
	ret = FUNC1(GPIO_NR_PALMTC_PCMCIA_PWRREADY);
	if (ret)
		goto err7;

	skt->irq = FUNC0(GPIO_NR_PALMTC_PCMCIA_READY);
	return 0;

err7:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_PWRREADY);
err6:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_READY);
err5:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_RESET);
err4:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_POWER3);
err3:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_POWER2);
err2:
	FUNC3(GPIO_NR_PALMTC_PCMCIA_POWER1);
err1:
	return ret;
}