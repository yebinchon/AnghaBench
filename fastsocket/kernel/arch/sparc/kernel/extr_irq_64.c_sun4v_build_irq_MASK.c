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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sun4v_irq ; 

unsigned int FUNC2(u32 devhandle, unsigned int devino)
{
	unsigned long sysino = FUNC1(devhandle, devino);

	return FUNC0(sysino, &sun4v_irq);
}