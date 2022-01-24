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
typedef  int /*<<< orphan*/  modem_info ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_ERROR1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 

int
FUNC4(char **p, modem_info * info)
{
	if (FUNC1(info))
		return (FUNC3(p, info));
	else if (FUNC0(info))
		return (FUNC2(p, info));
	PARSE_ERROR1;
}