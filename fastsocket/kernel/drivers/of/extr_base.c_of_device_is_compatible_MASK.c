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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,int) ; 
 char* FUNC1 (struct device_node const*,char*,int*) ; 
 int FUNC2 (char const*) ; 

int FUNC3(const struct device_node *device,
		const char *compat)
{
	const char* cp;
	int cplen, l;

	cp = FUNC1(device, "compatible", &cplen);
	if (cp == NULL)
		return 0;
	while (cplen > 0) {
		if (FUNC0(cp, compat, FUNC2(compat)) == 0)
			return 1;
		l = FUNC2(cp) + 1;
		cp += l;
		cplen -= l;
	}

	return 0;
}