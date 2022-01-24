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
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct zs_port {scalar_t__ tx_stopped; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct zs_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport)
{
	struct zs_port *zport = FUNC2(uport);
	struct zs_scc *scc = zport->scc;

	FUNC0(&scc->zlock);
	if (zport->tx_stopped) {
		FUNC4(zport, 0);
		zport->tx_stopped = 0;
		FUNC3(zport);
	}
	FUNC1(&scc->zlock);
}