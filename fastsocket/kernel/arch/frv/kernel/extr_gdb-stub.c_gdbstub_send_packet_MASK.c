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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char gdbstub_rx_unget ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 char FUNC3 (unsigned char) ; 
 char FUNC4 (unsigned char) ; 

__attribute__((used)) static int FUNC5(char *buffer)
{
	unsigned char checksum;
	int count;
	unsigned char ch;

	/* $<packet info>#<checksum> */
	FUNC0("### GDB Tx '%s' ###\n", buffer);

	do {
		FUNC2('$');
		checksum = 0;
		count = 0;

		while ((ch = buffer[count]) != 0) {
			FUNC2(ch);
			checksum += ch;
			count += 1;
		}

		FUNC2('#');
		FUNC2(FUNC3(checksum));
		FUNC2(FUNC4(checksum));

	} while (FUNC1(&ch,0),
#ifdef GDBSTUB_DEBUG_PROTOCOL
		 ch=='-' && (gdbstub_proto("### GDB Rx NAK\n"),0),
		 ch!='-' && ch!='+' && (gdbstub_proto("### GDB Rx ??? %02x\n",ch),0),
#endif
		 ch!='+' && ch!='$');

	if (ch=='+') {
		FUNC0("### GDB Rx ACK\n");
		return 0;
	}

	FUNC0("### GDB Tx Abandoned\n");
	gdbstub_rx_unget = ch;
	return 1;
}