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
struct tss_struct {int dummy; } ;
struct thread_struct {int /*<<< orphan*/  sp0; } ;
struct multicall_space {int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_CPU ; 
 int /*<<< orphan*/  __KERNEL_DS ; 
 struct multicall_space FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tss_struct *tss,
			 struct thread_struct *thread)
{
	struct multicall_space mcs = FUNC1(0);
	FUNC0(mcs.mc, __KERNEL_DS, thread->sp0);
	FUNC2(PARAVIRT_LAZY_CPU);
}