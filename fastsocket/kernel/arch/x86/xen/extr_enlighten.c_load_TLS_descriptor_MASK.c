#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  maddr; } ;
typedef  TYPE_1__ xmaddr_t ;
struct thread_struct {int /*<<< orphan*/ * tls_array; } ;
struct multicall_space {int /*<<< orphan*/  mc; } ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 unsigned int GDT_ENTRY_TLS_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct multicall_space FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (struct desc_struct*) ; 
 struct desc_struct* FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct thread_struct *t,
				unsigned int cpu, unsigned int i)
{
	struct desc_struct *gdt = FUNC3(cpu);
	xmaddr_t maddr = FUNC2(&gdt[GDT_ENTRY_TLS_MIN+i]);
	struct multicall_space mc = FUNC1(0);

	FUNC0(mc.mc, maddr.maddr, t->tls_array[i]);
}