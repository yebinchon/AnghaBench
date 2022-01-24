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
 int /*<<< orphan*/  PDC_STABLE ; 
 int /*<<< orphan*/  PDC_STABLE_RETURN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_lock ; 
 unsigned long* pdc_result ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(unsigned long *size)
{
       int retval;
	unsigned long flags;

       FUNC2(&pdc_lock, flags);
       retval = FUNC1(PDC_STABLE, PDC_STABLE_RETURN_SIZE, FUNC0(pdc_result));
       *size = pdc_result[0];
       FUNC3(&pdc_lock, flags);

       return retval;
}