#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  old_sigset_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; TYPE_1__* sighand; int /*<<< orphan*/  blocked; int /*<<< orphan*/  saved_sigmask; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int ERESTARTNOHAND ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TIF_RESTORE_SIGMASK ; 
 int /*<<< orphan*/  _BLOCKABLE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(old_sigset_t set)
{
	set &= _BLOCKABLE;
	FUNC4(&current->sighand->siglock);
	current->saved_sigmask = current->blocked;
	FUNC3(&current->blocked, set);
	FUNC0();
	FUNC5(&current->sighand->siglock);

	current->state = TASK_INTERRUPTIBLE;
	FUNC1();
	FUNC2(TIF_RESTORE_SIGMASK);

	return -ERESTARTNOHAND;
}