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
struct TYPE_3__ {unsigned long start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long KEXEC_CRASH_MEM_ALIGN ; 
 TYPE_1__ crashk_res ; 
 unsigned long FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(int enable)
{
	unsigned long size = FUNC1(&crashk_res);

	FUNC0(crashk_res.start % KEXEC_CRASH_MEM_ALIGN ||
	       size % KEXEC_CRASH_MEM_ALIGN);
	if (enable)
		FUNC2(crashk_res.start, size);
	else
		FUNC3(crashk_res.start, size);
}