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
 scalar_t__ CCM_PCDR0 ; 
 scalar_t__ CRM_BASE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC3(int per)
{
	unsigned long ofs = (per & 0x3) * 8;
	unsigned long reg = per & ~0x3;
	unsigned long val = (FUNC2(CRM_BASE + CCM_PCDR0 + reg) >> ofs) & 0x3f;
	unsigned long fref;

	if (FUNC2(CRM_BASE + 0x64) & (1 << per))
		fref = FUNC1();
	else
		fref = FUNC0(NULL);

	return fref / (val + 1);
}