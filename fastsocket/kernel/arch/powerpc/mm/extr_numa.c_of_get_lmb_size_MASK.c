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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  n_mem_size_cells ; 
 int* FUNC0 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const**) ; 

__attribute__((used)) static u64 FUNC2(struct device_node *memory)
{
	const u32 *prop;
	u32 len;

	prop = FUNC0(memory, "ibm,lmb-size", &len);
	if (!prop || len < sizeof(unsigned int))
		return 0;

	return FUNC1(n_mem_size_cells, &prop);
}