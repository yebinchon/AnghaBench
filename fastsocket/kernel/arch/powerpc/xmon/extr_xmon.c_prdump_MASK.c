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
 char* REG ; 
 char** fault_chars ; 
 size_t fault_type ; 
 long FUNC0 (unsigned long,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3(unsigned long adrs, long ndump)
{
	long n, m, c, r, nr;
	unsigned char temp[16];

	for (n = ndump; n > 0;) {
		FUNC1(REG, adrs);
		FUNC2(' ');
		r = n < 16? n: 16;
		nr = FUNC0(adrs, temp, r);
		adrs += nr;
		for (m = 0; m < r; ++m) {
		        if ((m & (sizeof(long) - 1)) == 0 && m > 0)
				FUNC2(' ');
			if (m < nr)
				FUNC1("%.2x", temp[m]);
			else
				FUNC1("%s", fault_chars[fault_type]);
		}
		for (; m < 16; ++m) {
		        if ((m & (sizeof(long) - 1)) == 0)
				FUNC2(' ');
			FUNC1("  ");
		}
		FUNC1("  |");
		for (m = 0; m < r; ++m) {
			if (m < nr) {
				c = temp[m];
				FUNC2(' ' <= c && c <= '~'? c: '.');
			} else
				FUNC2(' ');
		}
		n -= r;
		for (; m < 16; ++m)
			FUNC2(' ');
		FUNC1("|\n");
		if (nr < r)
			break;
	}
}