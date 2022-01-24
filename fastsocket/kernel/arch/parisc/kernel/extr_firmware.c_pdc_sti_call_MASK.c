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
 int /*<<< orphan*/  pdc_lock ; 
 int FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned long func, unsigned long flags,
                 unsigned long inptr, unsigned long outputr,
                 unsigned long glob_cfg)
{
        int retval;
	unsigned long irqflags;

        FUNC1(&pdc_lock, irqflags);  
        retval = FUNC0(func, flags, inptr, outputr, glob_cfg);
        FUNC2(&pdc_lock, irqflags);

        return retval;
}