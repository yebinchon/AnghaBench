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
typedef  int u8 ;
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct zs_port {struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int ALL_SNT ; 
 int /*<<< orphan*/  R1 ; 
 unsigned int TIOCSER_TEMT ; 
 int FUNC0 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zs_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_port *uport)
{
	struct zs_port *zport = FUNC3(uport);
	struct zs_scc *scc = zport->scc;
	unsigned long flags;
	u8 status;

	FUNC1(&scc->zlock, flags);
	status = FUNC0(zport, R1);
	FUNC2(&scc->zlock, flags);

	return status & ALL_SNT ? TIOCSER_TEMT : 0;
}