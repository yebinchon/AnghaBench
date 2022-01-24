#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  uint ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mpsc_port_info {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCSER_TEMT ; 
 scalar_t__ FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint FUNC3(struct uart_port *port)
{
	struct mpsc_port_info *pi = (struct mpsc_port_info *)port;
	ulong iflags;
	uint rc;

	FUNC1(&pi->port.lock, iflags);
	rc = FUNC0(pi) ? 0 : TIOCSER_TEMT;
	FUNC2(&pi->port.lock, iflags);

	return rc;
}