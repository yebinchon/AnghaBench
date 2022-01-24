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
struct module {void* module_core; int core_size; } ;

/* Variables and functions */

__attribute__((used)) static inline int FUNC0(struct module *me, void *loc)
{
	return (loc >= me->module_core &&
		loc <= (me->module_core + me->core_size));
}