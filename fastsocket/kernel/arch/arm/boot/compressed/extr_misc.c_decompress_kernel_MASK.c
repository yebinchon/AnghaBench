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
typedef  void* ulg ;
typedef  int /*<<< orphan*/  uch ;

/* Variables and functions */
 int __machine_arch_type ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* free_mem_end_ptr ; 
 void* free_mem_ptr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * output_data ; 
 void* output_ptr ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

ulg
FUNC4(ulg output_start, ulg free_mem_ptr_p, ulg free_mem_ptr_end_p,
		  int arch_id)
{
	output_data		= (uch *)output_start;	/* Points to kernel start */
	free_mem_ptr		= free_mem_ptr_p;
	free_mem_end_ptr	= free_mem_ptr_end_p;
	__machine_arch_type	= arch_id;

	FUNC0();

	FUNC2();
	FUNC3("Uncompressing Linux...");
	FUNC1();
	FUNC3(" done, booting the kernel.\n");
	return output_ptr;
}