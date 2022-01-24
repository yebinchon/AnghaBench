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

__attribute__((used)) static unsigned short FUNC3(unsigned int iobase,
					    unsigned short *s)
{
	unsigned short tmp;

	tmp = *s = 0;
	do {
		*s = tmp;
		tmp = FUNC2(FUNC1(iobase)) |
				(FUNC2(FUNC0(iobase)) & 4 ? 0x100 : 0);
	} while (tmp != *s);

	return *s;
}