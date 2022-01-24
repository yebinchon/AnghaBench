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
 int PAGE_KERNEL ; 
 int _PAGE_NO_CACHE ; 
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (unsigned long) ; 

__attribute__((used)) static inline void *FUNC2(unsigned long size)
{
#if defined(__powerpc__) && defined(CONFIG_NOT_COHERENT_CACHE)
	return __vmalloc(size, GFP_KERNEL, PAGE_KERNEL | _PAGE_NO_CACHE);
#else
	return FUNC1(size);
#endif
}