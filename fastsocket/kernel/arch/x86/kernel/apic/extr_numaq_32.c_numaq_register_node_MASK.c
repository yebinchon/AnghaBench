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
struct sys_cfg_data {struct eachquadmem* eq; } ;
struct eachquadmem {scalar_t__ hi_shrd_mem_size; scalar_t__ hi_shrd_mem_start; scalar_t__ priv_mem_size; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,void*,void*) ; 
 void** node_end_pfn ; 
 int /*<<< orphan*/  FUNC3 (int,void*,void*) ; 
 int /*<<< orphan*/ * node_remap_size ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void** node_start_pfn ; 

__attribute__((used)) static inline void FUNC5(int node, struct sys_cfg_data *scd)
{
	struct eachquadmem *eq = scd->eq + node;

	FUNC4(node);

	/* Convert to pages */
	node_start_pfn[node] =
		 FUNC0(eq->hi_shrd_mem_start - eq->priv_mem_size);

	node_end_pfn[node] =
		 FUNC0(eq->hi_shrd_mem_start + eq->hi_shrd_mem_size);

	FUNC1(node, node_start_pfn[node],
						node_end_pfn[node]);

	FUNC2(node, node_start_pfn[node], node_end_pfn[node]);

	node_remap_size[node] = FUNC3(node,
					node_start_pfn[node],
					node_end_pfn[node]);
}