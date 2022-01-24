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
typedef  int u32 ;
struct ath5k_hw {int /*<<< orphan*/  ah_imr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_GPIOCR ; 
 int AR5K_GPIOCR_INT_ENA ; 
 int FUNC0 (unsigned int) ; 
 int AR5K_GPIOCR_INT_SELH ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  AR5K_IMR_GPIO ; 
 unsigned int AR5K_NUM_GPIO ; 
 int /*<<< orphan*/  AR5K_PIMR ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ath5k_hw *ah, unsigned int gpio,
		u32 interrupt_level)
{
	u32 data;

	if (gpio >= AR5K_NUM_GPIO)
		return;

	/*
	 * Set the GPIO interrupt
	 */
	data = (FUNC3(ah, AR5K_GPIOCR) &
		~(FUNC0(gpio) | AR5K_GPIOCR_INT_SELH |
		AR5K_GPIOCR_INT_ENA | FUNC1(gpio))) |
		(FUNC0(gpio) | AR5K_GPIOCR_INT_ENA);

	FUNC4(ah, interrupt_level ? data :
		(data | AR5K_GPIOCR_INT_SELH), AR5K_GPIOCR);

	ah->ah_imr |= AR5K_IMR_GPIO;

	/* Enable GPIO interrupts */
	FUNC2(ah, AR5K_PIMR, AR5K_IMR_GPIO);
}