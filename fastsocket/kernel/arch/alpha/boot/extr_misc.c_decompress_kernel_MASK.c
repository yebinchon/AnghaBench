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
 int /*<<< orphan*/  WSIZE ; 
 void* free_mem_end_ptr ; 
 void* free_mem_ptr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * input_data ; 
 size_t input_data_size ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * output_data ; 
 unsigned int output_ptr ; 
 int /*<<< orphan*/  window ; 

unsigned int
FUNC3(void *output_start,
		  void *input_start,
		  size_t ksize,
		  size_t kzsize)
{
	output_data		= (uch *)output_start;
	input_data		= (uch *)input_start;
	input_data_size		= kzsize; /* use compressed size */

	/* FIXME FIXME FIXME */
	free_mem_ptr		= (ulg)output_start + ksize;
	free_mem_end_ptr	= (ulg)output_start + ksize + 0x200000;
	/* FIXME FIXME FIXME */

	/* put in temp area to reduce initial footprint */
	window = FUNC2(WSIZE);

	FUNC1();
/*	puts("Uncompressing Linux..."); */
	FUNC0();
/*	puts(" done, booting the kernel.\n"); */
	return output_ptr;
}