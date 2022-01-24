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
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int AR_GPIO_OUTPUT_MUX1 ; 
 int AR_GPIO_OUTPUT_MUX2 ; 
 int AR_GPIO_OUTPUT_MUX3 ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,int) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah,
					 u32 gpio, u32 type)
{
	int addr;
	u32 gpio_shift, tmp;

	if (gpio > 11)
		addr = AR_GPIO_OUTPUT_MUX3;
	else if (gpio > 5)
		addr = AR_GPIO_OUTPUT_MUX2;
	else
		addr = AR_GPIO_OUTPUT_MUX1;

	gpio_shift = (gpio % 6) * 5;

	if (FUNC0(ah)
	    || (addr != AR_GPIO_OUTPUT_MUX1)) {
		FUNC2(ah, addr, (type << gpio_shift),
			(0x1f << gpio_shift));
	} else {
		tmp = FUNC1(ah, addr);
		tmp = ((tmp & 0x1F0) << 1) | (tmp & ~0x1F0);
		tmp &= ~(0x1f << gpio_shift);
		tmp |= (type << gpio_shift);
		FUNC3(ah, addr, tmp);
	}
}