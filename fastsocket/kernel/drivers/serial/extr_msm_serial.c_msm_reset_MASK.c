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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_BREAK_INT ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_CTS ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_ERR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_RX ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_TX ; 
 int /*<<< orphan*/  UART_CR_CMD_SET_RFR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port)
{
	/* reset everything */
	FUNC0(port, UART_CR_CMD_RESET_RX, UART_CR);
	FUNC0(port, UART_CR_CMD_RESET_TX, UART_CR);
	FUNC0(port, UART_CR_CMD_RESET_ERR, UART_CR);
	FUNC0(port, UART_CR_CMD_RESET_BREAK_INT, UART_CR);
	FUNC0(port, UART_CR_CMD_RESET_CTS, UART_CR);
	FUNC0(port, UART_CR_CMD_SET_RFR, UART_CR);
}