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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int free_mem_end_ptr ; 
 int free_mem_ptr ; 
 int /*<<< orphan*/  malloc_count ; 
 int malloc_ptr ; 

__attribute__((used)) static void *FUNC1(int size)
{
       void *p;

       if (size < 0)
		FUNC0("Malloc error");
       if (!malloc_ptr)
		malloc_ptr = free_mem_ptr;

       malloc_ptr = (malloc_ptr + 3) & ~3;     /* Align */

       p = (void *)malloc_ptr;
       malloc_ptr += size;

       if (free_mem_end_ptr && malloc_ptr >= free_mem_end_ptr)
		FUNC0("Out of memory");

       malloc_count++;
       return p;
}