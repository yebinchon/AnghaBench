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
struct uart_8250_port {int capabilities; } ;

/* Variables and functions */
 int UART_CAP_EFR ; 
 int UART_CAP_SLEEP ; 
 int /*<<< orphan*/  UART_EFR ; 
 int UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IERX_SLEEP ; 
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct uart_8250_port *p, int sleep)
{
	if (p->capabilities & UART_CAP_SLEEP) {
		if (p->capabilities & UART_CAP_EFR) {
			FUNC0(p, UART_LCR, 0xBF);
			FUNC0(p, UART_EFR, UART_EFR_ECB);
			FUNC0(p, UART_LCR, 0);
		}
		FUNC0(p, UART_IER, sleep ? UART_IERX_SLEEP : 0);
		if (p->capabilities & UART_CAP_EFR) {
			FUNC0(p, UART_LCR, 0xBF);
			FUNC0(p, UART_EFR, 0);
			FUNC0(p, UART_LCR, 0);
		}
	}
}