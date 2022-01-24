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
struct user_desc {int dummy; } ;
struct thread_struct {struct desc_struct* tls_array; } ;
struct task_struct {struct thread_struct thread; } ;
struct desc_struct {scalar_t__ b; scalar_t__ a; } ;
struct TYPE_2__ {struct thread_struct thread; } ;

/* Variables and functions */
 int GDT_ENTRY_TLS_MIN ; 
 scalar_t__ FUNC0 (struct user_desc const*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct desc_struct*,struct user_desc const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct thread_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct task_struct *p, int idx,
			 const struct user_desc *info, int n)
{
	struct thread_struct *t = &p->thread;
	struct desc_struct *desc = &t->tls_array[idx - GDT_ENTRY_TLS_MIN];
	int cpu;

	/*
	 * We must not get preempted while modifying the TLS.
	 */
	cpu = FUNC2();

	while (n-- > 0) {
		if (FUNC0(info))
			desc->a = desc->b = 0;
		else
			FUNC1(desc, info);
		++info;
		++desc;
	}

	if (t == &current->thread)
		FUNC3(t, cpu);

	FUNC4();
}