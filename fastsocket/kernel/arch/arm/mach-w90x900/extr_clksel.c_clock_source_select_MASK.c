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
 unsigned int ATAOFFSET ; 
 unsigned int AUDOFFSET ; 
 unsigned int CPUOFFSET ; 
 unsigned int LCDOFFSET ; 
 unsigned int MSOFFSET ; 
 int /*<<< orphan*/  REG_CLKSEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(const char *dev_id, unsigned int clkval)
{
	unsigned int clksel, offset;

	clksel = FUNC0(REG_CLKSEL);

	if (FUNC2(dev_id, "nuc900-ms") == 0)
		offset = MSOFFSET;
	else if (FUNC2(dev_id, "nuc900-atapi") == 0)
		offset = ATAOFFSET;
	else if (FUNC2(dev_id, "nuc900-lcd") == 0)
		offset = LCDOFFSET;
	else if (FUNC2(dev_id, "nuc900-audio") == 0)
		offset = AUDOFFSET;
	else
		offset = CPUOFFSET;

	clksel &= ~(0x03 << offset);
	clksel |= (clkval << offset);

	FUNC1(clksel, REG_CLKSEL);
}