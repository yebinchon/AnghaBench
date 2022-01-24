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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 int PF_RANDOMIZE ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* current ; 

unsigned long FUNC2(unsigned long base)
{
	unsigned long ret = FUNC0(base + FUNC1());

	if (!(current->flags & PF_RANDOMIZE))
		return base;
	if (ret < base)
		return base;
	return ret;
}