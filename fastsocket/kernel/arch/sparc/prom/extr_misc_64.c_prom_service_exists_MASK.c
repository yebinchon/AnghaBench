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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P1275_ARG_IN_STRING ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char*,int,char const*) ; 

int FUNC3(const char *service_name)
{
	int err = FUNC2("test", FUNC0(0, P1275_ARG_IN_STRING) |
			    FUNC1(1, 1), service_name);

	if (err)
		return 0;
	return 1;
}