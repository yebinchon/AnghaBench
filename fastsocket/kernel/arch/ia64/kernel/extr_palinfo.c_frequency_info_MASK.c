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
struct pal_freq_ratio {int num; int den; } ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 scalar_t__ FUNC1 (struct pal_freq_ratio*,struct pal_freq_ratio*,struct pal_freq_ratio*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC3(char *page)
{
	char *p = page;
	struct pal_freq_ratio proc, itc, bus;
	unsigned long base;

	if (FUNC0(&base) == -1)
		p += FUNC2(p, "Output clock            : not implemented\n");
	else
		p += FUNC2(p, "Output clock            : %ld ticks/s\n", base);

	if (FUNC1(&proc, &bus, &itc) != 0) return 0;

	p += FUNC2(p,
		     "Processor/Clock ratio   : %d/%d\n"
		     "Bus/Clock ratio         : %d/%d\n"
		     "ITC/Clock ratio         : %d/%d\n",
		     proc.num, proc.den, bus.num, bus.den, itc.num, itc.den);

	return p - page;
}