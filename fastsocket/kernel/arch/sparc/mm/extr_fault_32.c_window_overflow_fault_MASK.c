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
struct TYPE_2__ {unsigned long* rwbuf_stkptrs; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 

void FUNC2(void)
{
	unsigned long sp;

	sp = FUNC0()->rwbuf_stkptrs[0];
	if(((sp + 0x38) & PAGE_MASK) != (sp & PAGE_MASK))
		FUNC1(sp + 0x38, 1);
	FUNC1(sp, 1);
}