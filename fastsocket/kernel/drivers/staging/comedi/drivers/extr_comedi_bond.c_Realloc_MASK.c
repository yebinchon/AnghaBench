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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t) ; 

__attribute__((used)) static void *FUNC4(const void *oldmem, size_t newlen, size_t oldlen)
{
	void *newmem = FUNC1(newlen, GFP_KERNEL);

	if (newmem && oldmem)
		FUNC2(newmem, oldmem, FUNC3(oldlen, newlen));
	FUNC0(oldmem);
	return newmem;
}