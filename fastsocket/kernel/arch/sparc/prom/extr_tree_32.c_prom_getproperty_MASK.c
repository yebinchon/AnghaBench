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
struct TYPE_2__ {int (* no_getprop ) (int,char const*,char*) ;} ;

/* Variables and functions */
 int FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  prom_lock ; 
 TYPE_1__* prom_nodeops ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int,char const*,char*) ; 

int FUNC5(int node, const char *prop, char *buffer, int bufsize)
{
	int plen, ret;
	unsigned long flags;

	plen = FUNC0(node, prop);
	if((plen > bufsize) || (plen == 0) || (plen == -1))
		return -1;
	/* Ok, things seem all right. */
	FUNC2(&prom_lock, flags);
	ret = prom_nodeops->no_getprop(node, prop, buffer);
	FUNC1();
	FUNC3(&prom_lock, flags);
	return ret;
}