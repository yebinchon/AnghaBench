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
 int /*<<< orphan*/  hwpoison_inject_fd ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char*,unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(unsigned long offset)
{
	char buf[100];
	int len;

	len = FUNC1(buf, "0x%lx\n", offset);
	len = FUNC2(hwpoison_inject_fd, buf, len);
	if (len < 0) {
		FUNC0("hwpoison inject");
		return len;
	}
	return 0;
}