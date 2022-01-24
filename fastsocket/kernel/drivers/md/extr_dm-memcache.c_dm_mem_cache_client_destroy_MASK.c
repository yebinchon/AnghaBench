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
struct dm_mem_cache_client {scalar_t__ free_pages; scalar_t__ total_pages; int /*<<< orphan*/  objs_pool; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_mem_cache_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dm_mem_cache_client *cl)
{
	FUNC0(cl->free_pages != cl->total_pages);
	FUNC1(cl->free_list);
	FUNC3(cl->objs_pool);
	FUNC2(cl);
}