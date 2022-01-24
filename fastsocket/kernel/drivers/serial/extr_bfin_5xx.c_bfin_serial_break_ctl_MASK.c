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
typedef  int /*<<< orphan*/  u16 ;
struct uart_port {int dummy; } ;
struct bfin_serial_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct bfin_serial_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfin_serial_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, int break_state)
{
	struct bfin_serial_port *uart = (struct bfin_serial_port *)port;
	u16 lcr = FUNC1(uart);
	if (break_state)
		lcr |= SB;
	else
		lcr &= ~SB;
	FUNC2(uart, lcr);
	FUNC0();
}