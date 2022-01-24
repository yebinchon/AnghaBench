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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER1 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER2 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_POWER3 ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_PWRREADY ; 
 int /*<<< orphan*/  GPIO_NR_PALMTC_PCMCIA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
	int timeout = 50;

	FUNC1(GPIO_NR_PALMTC_PCMCIA_POWER3, 1);
	FUNC2(50);

	/* Power up the card, 1.8V first, after a while 3.3V */
	FUNC1(GPIO_NR_PALMTC_PCMCIA_POWER1, 1);
	FUNC2(100);
	FUNC1(GPIO_NR_PALMTC_PCMCIA_POWER2, 1);

	/* Wait till the card is ready */
	while (!FUNC0(GPIO_NR_PALMTC_PCMCIA_PWRREADY) &&
		timeout) {
		FUNC2(1);
		timeout--;
	}

	/* Power down the WiFi in case of error */
	if (!timeout) {
		FUNC3();
		return 1;
	}

	/* Reset the card */
	FUNC1(GPIO_NR_PALMTC_PCMCIA_RESET, 1);
	FUNC2(20);
	FUNC1(GPIO_NR_PALMTC_PCMCIA_RESET, 0);
	FUNC2(25);

	FUNC1(GPIO_NR_PALMTC_PCMCIA_POWER3, 0);

	return 0;
}