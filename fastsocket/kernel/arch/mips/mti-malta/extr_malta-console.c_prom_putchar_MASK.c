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
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_TX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 

int FUNC2(char c)
{
	while ((FUNC0(UART_LSR) & UART_LSR_THRE) == 0)
		;

	FUNC1(UART_TX, c);

	return 1;
}