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
struct psmouse {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 scalar_t__ FUNC0 (struct psmouse*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (struct psmouse*,int) ; 
 unsigned long FUNC2 (char const*,char**,int) ; 
 scalar_t__ FUNC3 (char*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct psmouse *psmouse, void *data,
				   const char *buf, size_t count)
{
	unsigned long reg, val;
	char *rest;
	ssize_t retval;

	reg = FUNC2(buf, &rest, 16);
	if (rest == buf || *rest != ' ' || reg > 0xff)
		return -EINVAL;

	if (FUNC3(rest + 1, 16, &val) || val > 0xff)
		return -EINVAL;

	if (FUNC1(psmouse, true))
		return -EIO;

	retval = FUNC0(psmouse, reg, val) < 0 ? -EIO : count;

	FUNC1(psmouse, false);

	return count;
}