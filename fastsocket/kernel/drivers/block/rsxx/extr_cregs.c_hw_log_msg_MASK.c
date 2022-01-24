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
struct rsxx_cardinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsxx_cardinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,char const*) ; 

__attribute__((used)) static void FUNC9(struct rsxx_cardinfo *card, const char *str, int len)
{
	static char level;

	/*
	 * New messages start with "<#>", where # is the log level. Messages
	 * that extend past the log buffer will use the previous level
	 */
	if ((len > 3) && (str[0] == '<') && (str[2] == '>')) {
		level = str[1];
		str += 3; /* Skip past the log level. */
		len -= 3;
	}

	switch (level) {
	case '0':
		FUNC4(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '1':
		FUNC1(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '2':
		FUNC2(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '3':
		FUNC5(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '4':
		FUNC8(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '5':
		FUNC7(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '6':
		FUNC6(FUNC0(card), "HW: %.*s", len, str);
		break;
	case '7':
		FUNC3(FUNC0(card), "HW: %.*s", len, str);
		break;
	default:
		FUNC6(FUNC0(card), "HW: %.*s", len, str);
		break;
	}
}