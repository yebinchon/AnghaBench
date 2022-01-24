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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MOXA_MUST_EFR_EFRB_ENABLE ; 
 scalar_t__ MOXA_MUST_EFR_REGISTER ; 
 int /*<<< orphan*/  MOXA_MUST_ENTER_ENCHANCE ; 
 scalar_t__ UART_LCR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned long baseio)
{
	u8 oldlcr;
	u8 efr;

	oldlcr = FUNC0(baseio + UART_LCR);
	FUNC1(MOXA_MUST_ENTER_ENCHANCE, baseio + UART_LCR);

	efr = FUNC0(baseio + MOXA_MUST_EFR_REGISTER);
	efr &= ~MOXA_MUST_EFR_EFRB_ENABLE;

	FUNC1(efr, baseio + MOXA_MUST_EFR_REGISTER);
	FUNC1(oldlcr, baseio + UART_LCR);
}