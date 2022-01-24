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
struct childless {unsigned long storeme; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ERANGE ; 
 unsigned long INT_MAX ; 
 unsigned long FUNC0 (char*,char**,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct childless *childless,
				       const char *page,
				       size_t count)
{
	unsigned long tmp;
	char *p = (char *) page;

	tmp = FUNC0(p, &p, 10);
	if (!p || (*p && (*p != '\n')))
		return -EINVAL;

	if (tmp > INT_MAX)
		return -ERANGE;

	childless->storeme = tmp;

	return count;
}