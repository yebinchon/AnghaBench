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
 int RUNLENMAX ; 
 char FUNC0 () ; 
 char FUNC1 (int) ; 
 char FUNC2 (int) ; 
 scalar_t__ kgdb_started ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(char *buffer)
{
	int checksum;
	int runlen;
	int encode;

	do {
		char *src = buffer;
		FUNC3('$');
		checksum = 0;
		while (*src) {
			/* Do run length encoding */
			FUNC3(*src);
			checksum += *src;
			runlen = 0;
			while (runlen < RUNLENMAX && *src == src[runlen]) {
				runlen++;
			}
			if (runlen > 3) {
				/* Got a useful amount */
				FUNC3 ('*');
				checksum += '*';
				encode = runlen + ' ' - 4;
				FUNC3(encode);
				checksum += encode;
				src += runlen;
			} else {
				src++;
			}
		}
		FUNC3('#');
		FUNC3(FUNC1(checksum));
		FUNC3(FUNC2(checksum));
	} while(kgdb_started && (FUNC0() != '+'));
}