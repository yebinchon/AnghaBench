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
typedef  size_t u32 ;
struct asc_dvc_var {size_t ptr_map_count; int /*<<< orphan*/ ** ptr_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t) ; 

__attribute__((used)) static void * FUNC2(struct asc_dvc_var *asc_dvc, u32 srb)
{
	void *ptr;

	srb--;
	if (srb >= asc_dvc->ptr_map_count) {
		FUNC1("advansys: bad SRB %u, max %u\n", srb,
							asc_dvc->ptr_map_count);
		return NULL;
	}
	ptr = asc_dvc->ptr_map[srb];
	asc_dvc->ptr_map[srb] = NULL;
	FUNC0(3, "Returning ptr %p from array offset %d\n", ptr, srb);
	return ptr;
}