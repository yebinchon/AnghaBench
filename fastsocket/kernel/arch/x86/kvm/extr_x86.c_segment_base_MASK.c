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
typedef  int u16 ;
struct ldttss_desc64 {scalar_t__ base3; } ;
struct descriptor_table {unsigned long base; } ;
struct desc_struct {scalar_t__ s; int type; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct descriptor_table*) ; 
 int FUNC2 () ; 

unsigned long FUNC3(u16 selector)
{
	struct descriptor_table gdt;
	struct desc_struct *d;
	unsigned long table_base;
	unsigned long v;

	if (selector == 0)
		return 0;

	FUNC1(&gdt);
	table_base = gdt.base;

	if (selector & 4) {           /* from ldt */
		u16 ldt_selector = FUNC2();

		table_base = FUNC3(ldt_selector);
	}
	d = (struct desc_struct *)(table_base + (selector & ~7));
	v = FUNC0(d);
#ifdef CONFIG_X86_64
	if (d->s == 0 && (d->type == 2 || d->type == 9 || d->type == 11))
		v |= ((unsigned long)((struct ldttss_desc64 *)d)->base3) << 32;
#endif
	return v;
}