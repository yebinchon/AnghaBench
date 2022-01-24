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
struct gnttab_map_grant_ref {int dummy; } ;

/* Variables and functions */
 unsigned int GNTTABOP_map_grant_ref ; 
 int /*<<< orphan*/  FUNC0 (struct gnttab_map_grant_ref*) ; 
 int FUNC1 (unsigned int,void*,unsigned int) ; 

int
FUNC2(unsigned int cmd, void *uop, unsigned int count)
{
	if (cmd == GNTTABOP_map_grant_ref) {
		unsigned int i;
		for (i = 0; i < count; i++) {
			FUNC0(
				(struct gnttab_map_grant_ref *)uop + i);
		}
	}
	return FUNC1(cmd, uop, count);
}