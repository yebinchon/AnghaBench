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
typedef  int u64 ;
struct TYPE_3__ {size_t ph_data; } ;
typedef  TYPE_1__ pal_hints_u_t ;

/* Variables and functions */
 size_t RSE_HINTS_COUNT ; 
 char* FUNC0 (char*,int*,int) ; 
 scalar_t__ FUNC1 (unsigned long*,unsigned long*) ; 
 scalar_t__ FUNC2 (int,int*,int*) ; 
 scalar_t__ FUNC3 (unsigned long*,TYPE_1__*) ; 
 char** rse_hints ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC5(char *page)
{
	char *p = page;
	u64 reg_info[2];
	u64 info;
	unsigned long phys_stacked;
	pal_hints_u_t hints;
	unsigned long iregs, dregs;
	char *info_type[]={
		"Implemented AR(s)",
		"AR(s) with read side-effects",
		"Implemented CR(s)",
		"CR(s) with read side-effects",
	};

	for(info=0; info < 4; info++) {

		if (FUNC2(info, &reg_info[0], &reg_info[1]) != 0) return 0;

		p += FUNC4(p, "%-32s : ", info_type[info]);

		p = FUNC0(p, reg_info, 128);

		p += FUNC4(p, "\n");
	}

	if (FUNC3(&phys_stacked, &hints) == 0) {

	p += FUNC4(p,
		     "RSE stacked physical registers   : %ld\n"
		     "RSE load/store hints             : %ld (%s)\n",
		     phys_stacked, hints.ph_data,
		     hints.ph_data < RSE_HINTS_COUNT ? rse_hints[hints.ph_data]: "(??)");
	}
	if (FUNC1(&iregs, &dregs))
		return 0;

	p += FUNC4(p,
		     "Instruction debug register pairs : %ld\n"
		     "Data debug register pairs        : %ld\n", iregs, dregs);

	return p - page;
}