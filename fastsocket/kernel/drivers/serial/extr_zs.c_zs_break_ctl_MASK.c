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
struct zs_port {int /*<<< orphan*/ * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  SND_BRK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zs_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *uport, int break_state)
{
	struct zs_port *zport = FUNC2(uport);
	struct zs_scc *scc = zport->scc;
	unsigned long flags;

	FUNC0(&scc->zlock, flags);
	if (break_state == -1)
		zport->regs[5] |= SND_BRK;
	else
		zport->regs[5] &= ~SND_BRK;
	FUNC3(zport, R5, zport->regs[5]);
	FUNC1(&scc->zlock, flags);
}