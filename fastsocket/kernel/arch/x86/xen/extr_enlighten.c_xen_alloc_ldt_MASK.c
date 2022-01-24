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
struct desc_struct {int dummy; } ;

/* Variables and functions */
 unsigned int LDT_ENTRY_SIZE ; 
 int /*<<< orphan*/  PAGE_KERNEL_RO ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct desc_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct desc_struct *ldt, unsigned entries)
{
	const unsigned entries_per_page = PAGE_SIZE / LDT_ENTRY_SIZE;
	int i;

	for(i = 0; i < entries; i += entries_per_page)
		FUNC0(ldt + i, PAGE_KERNEL_RO);
}