#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int addr_t ;
struct TYPE_3__ {int cmd_line_ptr; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 TYPE_2__ boot_params ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(const char *option, char *buffer, int bufsize)
{
	u32 cmdline_ptr = boot_params.hdr.cmd_line_ptr;
	addr_t cptr;
	char c;
	int len = -1;
	const char *opptr = NULL;
	char *bufptr = buffer;
	enum {
		st_wordstart,	/* Start of word/after whitespace */
		st_wordcmp,	/* Comparing this word */
		st_wordskip,	/* Miscompare, skip */
		st_bufcpy	/* Copying this to buffer */
	} state = st_wordstart;

	if (!cmdline_ptr || cmdline_ptr >= 0x100000)
		return -1;	/* No command line, or inaccessible */

	cptr = cmdline_ptr & 0xf;
	FUNC2(cmdline_ptr >> 4);

	while (cptr < 0x10000 && (c = FUNC1(cptr++))) {
		switch (state) {
		case st_wordstart:
			if (FUNC0(c))
				break;

			/* else */
			state = st_wordcmp;
			opptr = option;
			/* fall through */

		case st_wordcmp:
			if (c == '=' && !*opptr) {
				len = 0;
				bufptr = buffer;
				state = st_bufcpy;
			} else if (FUNC0(c)) {
				state = st_wordstart;
			} else if (c != *opptr++) {
				state = st_wordskip;
			}
			break;

		case st_wordskip:
			if (FUNC0(c))
				state = st_wordstart;
			break;

		case st_bufcpy:
			if (FUNC0(c)) {
				state = st_wordstart;
			} else {
				if (len < bufsize-1)
					*bufptr++ = c;
				len++;
			}
			break;
		}
	}

	if (bufsize)
		*bufptr = '\0';

	return len;
}