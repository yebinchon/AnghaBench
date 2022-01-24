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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int test_complete ; 

__attribute__((used)) static int FUNC1(char *put_str, char *arg)
{
	test_complete = 1;
	if (!FUNC0(put_str+1, arg, 2)) {
		if (!FUNC0(arg, "T0", 2))
			test_complete = 2;
		return 0;
	}
	return 1;
}