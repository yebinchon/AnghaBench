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
 int gdbstub_busy ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char FUNC2 (unsigned char) ; 
 char FUNC3 (unsigned char) ; 
 unsigned char* output_buffer ; 

void FUNC4(int status)
{
	unsigned char checksum;
	unsigned char ch;
	int count;

	gdbstub_busy = 1;
	output_buffer[0] = 'W';
	output_buffer[1] = FUNC2(status);
	output_buffer[2] = FUNC3(status);
	output_buffer[3] = 0;

	FUNC0('$');
	checksum = 0;
	count = 0;

	while ((ch = output_buffer[count]) != 0) {
		FUNC0(ch);
		checksum += ch;
		count += 1;
	}

	FUNC0('#');
	FUNC0(FUNC2(checksum));
	FUNC0(FUNC3(checksum));

	/* make sure the output is flushed, or else RedBoot might clobber it */
	FUNC1();

	gdbstub_busy = 0;
}