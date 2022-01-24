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
typedef  size_t u8 ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(char *string, u8 max_length)
{
	u32 i;

	if (!string) {
		FUNC1("<\"NULL STRING PTR\">");
		return;
	}

	FUNC1("\"");
	for (i = 0; string[i] && (i < max_length); i++) {

		/* Escape sequences */

		switch (string[i]) {
		case 0x07:
			FUNC1("\\a");	/* BELL */
			break;

		case 0x08:
			FUNC1("\\b");	/* BACKSPACE */
			break;

		case 0x0C:
			FUNC1("\\f");	/* FORMFEED */
			break;

		case 0x0A:
			FUNC1("\\n");	/* LINEFEED */
			break;

		case 0x0D:
			FUNC1("\\r");	/* CARRIAGE RETURN */
			break;

		case 0x09:
			FUNC1("\\t");	/* HORIZONTAL TAB */
			break;

		case 0x0B:
			FUNC1("\\v");	/* VERTICAL TAB */
			break;

		case '\'':	/* Single Quote */
		case '\"':	/* Double Quote */
		case '\\':	/* Backslash */
			FUNC1("\\%c", (int)string[i]);
			break;

		default:

			/* Check for printable character or hex escape */

			if (FUNC0(string[i])) {
				/* This is a normal character */

				FUNC1("%c", (int)string[i]);
			} else {
				/* All others will be Hex escapes */

				FUNC1("\\x%2.2X", (s32) string[i]);
			}
			break;
		}
	}
	FUNC1("\"");

	if (i == max_length && string[i]) {
		FUNC1("...");
	}
}