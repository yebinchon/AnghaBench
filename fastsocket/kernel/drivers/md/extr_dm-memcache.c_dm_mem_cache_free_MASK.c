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
struct dm_mem_cache_object {int dummy; } ;
struct dm_mem_cache_client {int /*<<< orphan*/  objs_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_mem_cache_client*,struct dm_mem_cache_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_mem_cache_object*,int /*<<< orphan*/ ) ; 

void FUNC2(struct dm_mem_cache_client *cl,
		       struct dm_mem_cache_object *obj)
{
	FUNC0(cl, obj);
	FUNC1(obj, cl->objs_pool);
}