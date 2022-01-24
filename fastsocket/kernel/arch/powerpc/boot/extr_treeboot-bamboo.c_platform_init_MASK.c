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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ _end ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pibs_mac0 ; 
 int /*<<< orphan*/  pibs_mac1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long,int,int) ; 

void FUNC3(void)
{
	unsigned long end_of_ram = 0x8000000;
	unsigned long avail_ram = end_of_ram - (unsigned long)_end;

	FUNC2(_end, avail_ram, 32, 64);
	FUNC1();
	FUNC0((u8 *)&pibs_mac0, (u8 *)&pibs_mac1);
}