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
struct thread_struct {struct desc_struct* tls_array; } ;
struct task_struct {struct thread_struct thread; } ;
struct ia32_user_desc {int dummy; } ;
struct desc_struct {scalar_t__ b; scalar_t__ a; } ;
struct TYPE_2__ {struct thread_struct thread; } ;

/* Variables and functions */
 int GDT_ENTRY_TLS_MIN ; 
 scalar_t__ FUNC0 (struct ia32_user_desc const*) ; 
 scalar_t__ FUNC1 (struct ia32_user_desc const*) ; 
 scalar_t__ FUNC2 (struct ia32_user_desc const*) ; 
 TYPE_1__* current ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct thread_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct task_struct *p, int idx,
		const struct ia32_user_desc *info, int n)
{
	struct thread_struct *t = &p->thread;
	struct desc_struct *desc = &t->tls_array[idx - GDT_ENTRY_TLS_MIN];
	int cpu;

	/*
	 * We must not get preempted while modifying the TLS.
	 */
	cpu = FUNC3();

	while (n-- > 0) {
		if (FUNC0(info)) {
			desc->a = 0;
			desc->b = 0;
		} else {
			desc->a = FUNC1(info);
			desc->b = FUNC2(info);
		}

		++info;
		++desc;
	}

	if (t == &current->thread)
		FUNC4(t, cpu);

	FUNC5();
}