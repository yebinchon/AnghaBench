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
 int fdc_busy ; 
 int /*<<< orphan*/  fdc_nested ; 
 int /*<<< orphan*/  fdc_wait ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int drive)
{
	unsigned long flags;

	drive &= 3;
#ifdef DEBUG
	printk("get_fdc: drive %d  fdc_busy %d  fdc_nested %d\n",drive,fdc_busy,fdc_nested);
#endif
	FUNC1(flags);
	FUNC4(fdc_wait, FUNC3(drive));
	fdc_busy = drive;
	fdc_nested++;
	FUNC0(flags);
}