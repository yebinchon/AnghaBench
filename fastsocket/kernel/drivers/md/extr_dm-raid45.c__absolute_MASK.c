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
 int EINVAL ; 
 size_t FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(char *action, int act, int r)
{
	size_t len = FUNC0(action);

	if (len < 2)
		len = 2;

	/* Make delta absolute. */
	if (!FUNC1("set", action, len))
		;
	else if (!FUNC1("grow", action, len))
		r += act;
	else if (!FUNC1("shrink", action, len))
		r = act - r;
	else
		r = -EINVAL;

	return r;
}