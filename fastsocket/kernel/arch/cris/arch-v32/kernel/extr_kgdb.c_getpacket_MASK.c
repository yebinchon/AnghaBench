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
 int BUFMAX ; 
 int FUNC0 (char*) ; 
 char FUNC1 () ; 
 unsigned char FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static void
FUNC4(char *buffer)
{
	unsigned char checksum;
	unsigned char xmitcsum;
	int i;
	int count;
	char ch;

	do {
		while((ch = FUNC1 ()) != '$')
			/* Wait for the start character $ and ignore all other characters */;
		checksum = 0;
		xmitcsum = -1;
		count = 0;
		/* Read until a # or the end of the buffer is reached */
		while (count < BUFMAX) {
			ch = FUNC1();
			if (ch == '#')
				break;
			checksum = checksum + ch;
			buffer[count] = ch;
			count = count + 1;
		}

		if (count >= BUFMAX)
			continue;

		buffer[count] = 0;

		if (ch == '#') {
			xmitcsum = FUNC2(FUNC1()) << 4;
			xmitcsum += FUNC2(FUNC1());
			if (checksum != xmitcsum) {
				/* Wrong checksum */
				FUNC3('-');
			} else {
				/* Correct checksum */
				FUNC3('+');
				/* If sequence characters are received, reply with them */
				if (buffer[2] == ':') {
					FUNC3(buffer[0]);
					FUNC3(buffer[1]);
					/* Remove the sequence characters from the buffer */
					count = FUNC0(buffer);
					for (i = 3; i <= count; i++)
						buffer[i - 3] = buffer[i];
				}
			}
		}
	} while (checksum != xmitcsum);
}