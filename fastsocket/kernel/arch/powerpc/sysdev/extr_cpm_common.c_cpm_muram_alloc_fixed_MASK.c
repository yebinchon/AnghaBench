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
struct TYPE_3__ {int alignment; } ;

/* Variables and functions */
 TYPE_1__ cpm_muram_info ; 
 int /*<<< orphan*/  cpm_muram_lock ; 
 unsigned long FUNC0 (TYPE_1__*,unsigned long,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned long FUNC3(unsigned long offset, unsigned long size)
{
	unsigned long start;
	unsigned long flags;

	FUNC1(&cpm_muram_lock, flags);
	cpm_muram_info.alignment = 1;
	start = FUNC0(&cpm_muram_info, offset, size, "commproc");
	FUNC2(&cpm_muram_lock, flags);

	return start;
}