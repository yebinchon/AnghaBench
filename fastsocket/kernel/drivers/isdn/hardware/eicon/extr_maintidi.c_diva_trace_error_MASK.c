#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  user_context; int /*<<< orphan*/  (* error_notify_proc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  Adapter; int /*<<< orphan*/  instance; TYPE_1__ user_proc_table; } ;
typedef  TYPE_2__ diva_strace_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int) ; 

__attribute__((used)) static void FUNC1 (diva_strace_context_t* pLib,
															int error, const char* file, int line) {
	if (pLib->user_proc_table.error_notify_proc) {
		(*(pLib->user_proc_table.error_notify_proc))(\
																						pLib->user_proc_table.user_context,
																						&pLib->instance, pLib->Adapter,
																						error, file, line);
	}
}