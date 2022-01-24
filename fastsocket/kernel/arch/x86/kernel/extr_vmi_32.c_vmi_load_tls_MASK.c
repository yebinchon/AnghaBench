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
struct thread_struct {int /*<<< orphan*/ * tls_array; } ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ GDT_ENTRY_TLS_MIN ; 
 struct desc_struct* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct desc_struct*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct thread_struct *t, unsigned int cpu)
{
	struct desc_struct *gdt = FUNC0(cpu);
	FUNC1(gdt, GDT_ENTRY_TLS_MIN + 0, &t->tls_array[0]);
	FUNC1(gdt, GDT_ENTRY_TLS_MIN + 1, &t->tls_array[1]);
	FUNC1(gdt, GDT_ENTRY_TLS_MIN + 2, &t->tls_array[2]);
}