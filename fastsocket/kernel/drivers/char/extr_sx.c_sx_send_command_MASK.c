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
struct sx_port {int /*<<< orphan*/  board; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hi_hstat ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sx_port *port,
		int command, int mask, int newstat)
{
	FUNC1();
	FUNC4(port->board, FUNC0(port, hi_hstat), command);
	FUNC2();
	return FUNC3(port->board, FUNC0(port, hi_hstat), mask,
			newstat);
}