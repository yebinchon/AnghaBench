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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned int base, unsigned int *irq_level,
			      unsigned int *irq_type,
			      unsigned int *translation)
{
	static int intab[] = { 9, 10, 11, 12, 0, 14, 15, 0 };

	*irq_level = intab[FUNC2(FUNC0(base)) & 0x7];
	*irq_type  = (FUNC2(FUNC0(base)) & 0x8) >> 3;
	*translation = FUNC2(FUNC1(base)) & 0x1;
	FUNC3(FUNC2(FUNC0(base)) | 0x10, FUNC0(base));
}