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

/* Variables and functions */
 int /*<<< orphan*/  flush_tlb_one_ipi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 

void FUNC1(unsigned long vaddr)
{
	FUNC0(flush_tlb_one_ipi, (void *) vaddr);
}