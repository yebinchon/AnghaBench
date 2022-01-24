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
struct pt_regs {int dummy; } ;
typedef  int __u32 ;
struct TYPE_2__ {scalar_t__ replacement_session_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int _TIF_NOTIFY_RESUME ; 
 int _TIF_SIGPENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*) ; 

void FUNC4(int canrestart, struct pt_regs *regs,
		      __u32 thread_info_flags)
{
	/* deal with pending signal delivery */
	if (thread_info_flags & _TIF_SIGPENDING)
		FUNC1(canrestart,regs);

	if (thread_info_flags & _TIF_NOTIFY_RESUME) {
		FUNC0(TIF_NOTIFY_RESUME);
		FUNC3(regs);
		if (current->replacement_session_keyring)
			FUNC2();
	}
}