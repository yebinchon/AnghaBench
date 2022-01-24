#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  loc; } ;

/* Variables and functions */
 TYPE_1__* fcu_fans ; 
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(const char *loc, int fan)
{
	char	tmp[64];
	char	*c, *e;

	FUNC2(tmp, fcu_fans[fan].loc, 64);

	c = tmp;
	for (;;) {
		e = FUNC0(c, ',');
		if (e)
			*e = 0;
		if (FUNC1(loc, c) == 0)
			return 1;
		if (e == NULL)
			break;
		c = e + 1;
	}
	return 0;
}