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
 int /*<<< orphan*/  TIF_IRET ; 
 int /*<<< orphan*/  TIF_NOTIFY_RESUME ; 
 int _TIF_MCE_NOTIFY ; 
 int _TIF_NOTIFY_RESUME ; 
 int _TIF_SIGPENDING ; 
 int _TIF_USER_RETURN_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pt_regs*) ; 

void
FUNC6(struct pt_regs *regs, void *unused, __u32 thread_info_flags)
{
#ifdef CONFIG_X86_MCE
	/* notify userspace of pending MCEs */
	if (thread_info_flags & _TIF_MCE_NOTIFY)
		mce_notify_process();
#endif /* CONFIG_X86_64 && CONFIG_X86_MCE */

	/* deal with pending signal delivery */
	if (thread_info_flags & _TIF_SIGPENDING)
		FUNC1(regs);

	if (thread_info_flags & _TIF_NOTIFY_RESUME) {
		FUNC0(TIF_NOTIFY_RESUME);
		FUNC5(regs);
		if (current->replacement_session_keyring)
			FUNC3();
	}
	if (thread_info_flags & _TIF_USER_RETURN_NOTIFY)
		FUNC2();

#ifdef CONFIG_X86_32
	clear_thread_flag(TIF_IRET);
#endif /* CONFIG_X86_32 */
}