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
struct bfin_serial_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERBFI ; 
 int /*<<< orphan*/  FUNC0 (struct bfin_serial_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port)
{
	struct bfin_serial_port *uart = (struct bfin_serial_port *)port;

	FUNC0(uart, ERBFI);
}