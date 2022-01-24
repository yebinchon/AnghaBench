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
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC2 (unsigned long) ; 

void *FUNC3(unsigned long size)
{
	void *ret;

	/* We handle the zero case fine, unlike vmalloc */
	if (size == 0)
		return NULL;

	ret = FUNC2(size);
	if (!ret)
		ret = FUNC0(-ENOMEM);
	else
		FUNC1(ret, 0, size);

	return ret;
}