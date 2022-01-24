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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *file, char *buf, int size)
{
	ssize_t count;
	int fh;

	FUNC1("Read: %s:\n", file);
	fh = FUNC3(file, O_RDONLY);
	if (fh == -1) {
		FUNC0("open %s failed\n", file);
		return -1;
	}
	count = FUNC4(fh, buf, size - 1);
	if (count < 0) {
		FUNC0("read %s failed\n", file);
		FUNC2(fh);
		return -1;
	}
	buf[count] = 0;
	if (buf[FUNC5(buf) - 1] == '\n')
		buf[FUNC5(buf) - 1] = 0; /* strip newline */
	FUNC2(fh);
	FUNC1("'%s'\n", buf);

	return 0;
}