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

/* Variables and functions */
 int /*<<< orphan*/  AT32_GPIOF_PULLUP ; 
 int ATMEL_USART_CLK ; 
 int ATMEL_USART_CTS ; 
 int ATMEL_USART_RTS ; 
 int /*<<< orphan*/  PERIPH_A ; 
 int /*<<< orphan*/  PIOA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(int flags)
{
	u32 pin_mask = (1 << 17) | (1 << 18); /* RXD & TXD */
	if (flags & ATMEL_USART_RTS)	pin_mask |= (1 << 19);
	if (flags & ATMEL_USART_CTS)	pin_mask |= (1 << 20);
	if (flags & ATMEL_USART_CLK)	pin_mask |= (1 << 16);

	FUNC0(PIOA, pin_mask, PERIPH_A, AT32_GPIOF_PULLUP);
}