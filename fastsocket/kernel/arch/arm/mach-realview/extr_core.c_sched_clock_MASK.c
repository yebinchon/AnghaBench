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

/* Variables and functions */
 int /*<<< orphan*/  REALVIEW_REFCOUNTER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

unsigned long long FUNC2(void)
{
	unsigned long long v;

	v = (unsigned long long)FUNC1(REALVIEW_REFCOUNTER) * 125;
	FUNC0(v, 3);

	return v;
}