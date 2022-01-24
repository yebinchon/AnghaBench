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
struct desc_struct {int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;

/* Variables and functions */
 int /*<<< orphan*/  LHCALL_LOAD_GDT_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct desc_struct*,int,void const*,int) ; 

__attribute__((used)) static void FUNC2(struct desc_struct *dt, int entrynum,
				   const void *desc, int type)
{
	FUNC1(dt, entrynum, desc, type);
	/* Tell Host about this new entry. */
	FUNC0(LHCALL_LOAD_GDT_ENTRY, entrynum,
		       dt[entrynum].a, dt[entrynum].b);
}