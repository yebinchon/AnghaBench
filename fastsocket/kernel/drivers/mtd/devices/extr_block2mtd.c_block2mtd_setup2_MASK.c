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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (size_t*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char const*,int) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int FUNC8(const char *val)
{
	char buf[80 + 12]; /* 80 for device, 12 for erase size */
	char *str = buf;
	char *token[2];
	char *name;
	size_t erase_size = PAGE_SIZE;
	int i, ret;

	if (FUNC6(val, sizeof(buf)) >= sizeof(buf))
		FUNC2("parameter too long");

	FUNC4(str, val);
	FUNC1(str);

	for (i = 0; i < 2; i++)
		token[i] = FUNC7(&str, ",");

	if (str)
		FUNC2("too many arguments");

	if (!token[0])
		FUNC2("no argument");

	name = token[0];
	if (FUNC5(name) + 1 > 80)
		FUNC2("device name too long");

	if (token[1]) {
		ret = FUNC3(&erase_size, token[1]);
		if (ret) {
			FUNC2("illegal erase size");
		}
	}

	FUNC0(name, erase_size);

	return 0;
}