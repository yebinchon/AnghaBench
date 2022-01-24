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
struct powerdomain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct powerdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct powerdomain*) ; 

void FUNC2(struct powerdomain **pwrdm_list)
{
	struct powerdomain **p = NULL;

	if (pwrdm_list) {
		for (p = pwrdm_list; *p; p++) {
			FUNC1(*p);
			FUNC0(*p);
		}
	}
}