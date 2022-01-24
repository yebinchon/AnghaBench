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
struct desc_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* _set_ldt ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_LDT ; 
 int GDT_ENTRY_LDT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct desc_struct*,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ vmi_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct desc_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const void *addr, unsigned entries)
{
	unsigned cpu = FUNC2();
	struct desc_struct desc;

	FUNC1(&desc, (unsigned long)addr,
			entries * sizeof(struct desc_struct) - 1,
			DESC_LDT, 0);
	FUNC4(FUNC0(cpu), GDT_ENTRY_LDT, &desc, DESC_LDT);
	vmi_ops._set_ldt(entries ? GDT_ENTRY_LDT*sizeof(struct desc_struct) : 0);
}