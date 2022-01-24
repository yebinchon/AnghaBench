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
struct psmouse {int /*<<< orphan*/  (* set_resolution ) (struct psmouse*,unsigned long) ;} ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC2(struct psmouse *psmouse, void *data, const char *buf, size_t count)
{
	unsigned long value;

	if (FUNC0(buf, 10, &value))
		return -EINVAL;

	psmouse->set_resolution(psmouse, value);
	return count;
}