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
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 unsigned char FUNC3 (unsigned char) ; 

__attribute__((used)) static void FUNC4(char *buffer)
{
	unsigned char checksum;
	unsigned char xmitcsum;
	unsigned char ch;
	int count, i, ret, error;

	for (;;) {
		/* wait around for the start character, ignore all other characters */
		do {
			FUNC1(&ch, 0);
		} while (ch != '$');

		checksum = 0;
		xmitcsum = -1;
		count = 0;
		error = 0;

		/* now, read until a # or end of buffer is found */
		while (count < BUFMAX) {
			ret = FUNC1(&ch, 0);
			if (ret < 0)
				error = ret;

			if (ch == '#')
				break;
			checksum += ch;
			buffer[count] = ch;
			count++;
		}

		if (error == -EIO) {
			FUNC0("### GDB Rx Error - Skipping packet ###\n");
			FUNC0("### GDB Tx NAK\n");
			FUNC2('-');
			continue;
		}

		if (count >= BUFMAX || error)
			continue;

		buffer[count] = 0;

		/* read the checksum */
		ret = FUNC1(&ch, 0);
		if (ret < 0)
			error = ret;
		xmitcsum = FUNC3(ch) << 4;

		ret = FUNC1(&ch, 0);
		if (ret < 0)
			error = ret;
		xmitcsum |= FUNC3(ch);

		if (error) {
			if (error == -EIO)
				FUNC0("### GDB Rx Error - Skipping packet\n");
			FUNC0("### GDB Tx NAK\n");
			FUNC2('-');
			continue;
		}

		/* check the checksum */
		if (checksum != xmitcsum) {
			FUNC0("### GDB Tx NAK\n");
			FUNC2('-');	/* failed checksum */
			continue;
		}

		FUNC0("### GDB Rx '$%s#%02x' ###\n", buffer, checksum);
		FUNC0("### GDB Tx ACK\n");
		FUNC2('+'); /* successful transfer */

		/* if a sequence char is present, reply the sequence ID */
		if (buffer[2] == ':') {
			FUNC2(buffer[0]);
			FUNC2(buffer[1]);

			/* remove sequence chars from buffer */
			count = 0;
			while (buffer[count]) count++;
			for (i=3; i <= count; i++)
				buffer[i - 3] = buffer[i];
		}

		break;
	}
}