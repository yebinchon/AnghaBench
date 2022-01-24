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
struct uart_port {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
	unsigned long iflags;

	FUNC4(&pi->tx_lock, iflags);

	FUNC2(pi);
	FUNC0(pi);
	FUNC1(pi);

	FUNC5(&pi->tx_lock, iflags);

	FUNC3("mpsc_start_tx[%d]\n", port->line);
}