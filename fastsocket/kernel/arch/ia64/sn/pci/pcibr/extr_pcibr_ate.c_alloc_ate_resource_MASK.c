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
struct ate_resource {void* lowest_free_index; } ;

/* Variables and functions */
 void* FUNC0 (struct ate_resource*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ate_resource*,int,int,int) ; 

__attribute__((used)) static inline int FUNC2(struct ate_resource *ate_resource,
				     int ate_needed)
{
	int start_index;

	/*
	 * Check for ate exhaustion.
	 */
	if (ate_resource->lowest_free_index < 0)
		return -1;

	/*
	 * Find the required number of free consecutive ates.
	 */
	start_index =
	    FUNC0(ate_resource, ate_resource->lowest_free_index,
			  ate_needed);
	if (start_index >= 0)
		FUNC1(ate_resource, start_index, ate_needed, ate_needed);

	ate_resource->lowest_free_index =
	    FUNC0(ate_resource, ate_resource->lowest_free_index, 1);

	return start_index;
}