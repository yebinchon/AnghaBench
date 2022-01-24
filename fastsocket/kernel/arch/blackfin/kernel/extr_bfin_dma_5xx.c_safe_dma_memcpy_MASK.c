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
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 void* FUNC1 (void*,void const*,size_t) ; 

void *FUNC2(void *dst, const void *src, size_t size)
{
	if (!FUNC0(VERIFY_WRITE, dst, size))
		return NULL;
	if (!FUNC0(VERIFY_READ, src, size))
		return NULL;
	return FUNC1(dst, src, size);
}