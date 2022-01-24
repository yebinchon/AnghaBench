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
struct ioc4_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_OUTPUT_LOWAT ; 
 struct ioc4_port* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ioc4_port*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc4_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uart_port *the_port)
{
	struct ioc4_port *port = FUNC0(the_port, 0);

	if (FUNC1(port, the_port))
		FUNC2(port, N_OUTPUT_LOWAT, 0);
}