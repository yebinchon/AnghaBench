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
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *file, const char *command)
{
	int fh;

	FUNC1("Write: %s - %s\n", file, command);
	fh = FUNC3(file, O_WRONLY);
	if (fh == -1) {
		FUNC0("Could not open %s\n", file);
		return -1;
	}
	if (FUNC5(fh, command, FUNC4(command)) == -1) {
		FUNC0("Write to %s failed\n", file);
		FUNC2(fh);
		return -1;
	};
	FUNC2(fh);
	return 0;
}