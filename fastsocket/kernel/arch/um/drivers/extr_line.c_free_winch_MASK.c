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
struct winch {int pid; int fd; scalar_t__ stack; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  WINCH_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct winch*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct winch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct winch *winch, int free_irq_ok)
{
	FUNC3(&winch->list);

	if (winch->pid != -1)
		FUNC5(winch->pid, 1);
	if (winch->fd != -1)
		FUNC4(winch->fd);
	if (winch->stack != 0)
		FUNC1(winch->stack, 0);
	if (free_irq_ok)
		FUNC0(WINCH_IRQ, winch);
	FUNC2(winch);
}