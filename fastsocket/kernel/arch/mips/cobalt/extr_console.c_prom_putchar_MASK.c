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
 scalar_t__ COBALT_BRD_ID_QUBE1 ; 
 scalar_t__ UART_BASE ; 
 scalar_t__ UART_LSR ; 
 int UART_LSR_THRE ; 
 scalar_t__ UART_TX ; 
 scalar_t__ cobalt_board_id ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char,scalar_t__) ; 

void FUNC2(char c)
{
	if (cobalt_board_id <= COBALT_BRD_ID_QUBE1)
		return;

	while (!(FUNC0(UART_BASE + UART_LSR) & UART_LSR_THRE))
		;

	FUNC1(c, UART_BASE + UART_TX);
}