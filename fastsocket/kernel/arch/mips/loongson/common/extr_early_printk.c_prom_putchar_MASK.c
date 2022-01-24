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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOONGSON_UART_BASE ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

void FUNC3(char c)
{
	phys_addr_t uart_base =
		(phys_addr_t) FUNC0(LOONGSON_UART_BASE, 8);

	while ((FUNC1(uart_base, UART_LSR) & UART_LSR_THRE) == 0)
		;

	FUNC2(uart_base, UART_TX, c);
}