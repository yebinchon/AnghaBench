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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_DLL ; 
 int /*<<< orphan*/  UART_DLM ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_DLAB ; 
 int FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static unsigned int FUNC2(struct uart_8250_port *p)
{
	unsigned char old_dll, old_dlm, old_lcr;
	unsigned int id;

	old_lcr = FUNC0(p, UART_LCR);
	FUNC1(p, UART_LCR, UART_LCR_DLAB);

	old_dll = FUNC0(p, UART_DLL);
	old_dlm = FUNC0(p, UART_DLM);

	FUNC1(p, UART_DLL, 0);
	FUNC1(p, UART_DLM, 0);

	id = FUNC0(p, UART_DLL) | FUNC0(p, UART_DLM) << 8;

	FUNC1(p, UART_DLL, old_dll);
	FUNC1(p, UART_DLM, old_dlm);
	FUNC1(p, UART_LCR, old_lcr);

	return id;
}