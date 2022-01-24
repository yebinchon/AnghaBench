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
typedef  int u32 ;
struct device_node {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int immrbase ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,int const*) ; 

phys_addr_t FUNC4(void)
{
	struct device_node *soc;

	if (immrbase != -1)
		return immrbase;

	soc = FUNC0(NULL, "soc");
	if (soc) {
		int size;
		u32 naddr;
		const u32 *prop = FUNC1(soc, "#address-cells", &size);

		if (prop && size == 4)
			naddr = *prop;
		else
			naddr = 2;

		prop = FUNC1(soc, "ranges", &size);
		if (prop)
			immrbase = FUNC3(soc, prop + naddr);

		FUNC2(soc);
	}

	return immrbase;
}