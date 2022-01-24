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
typedef  scalar_t__ u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned char* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 unsigned long FUNC3 (scalar_t__ const*,scalar_t__) ; 

void FUNC4(struct device_node *dn, const void *dma_window_prop,
		unsigned long *busno, unsigned long *phys, unsigned long *size)
{
	const u32 *dma_window;
	u32 cells;
	const unsigned char *prop;

	dma_window = dma_window_prop;

	/* busno is always one cell */
	*busno = *(dma_window++);

	prop = FUNC0(dn, "ibm,#dma-address-cells", NULL);
	if (!prop)
		prop = FUNC0(dn, "#address-cells", NULL);

	cells = prop ? *(u32 *)prop : FUNC1(dn);
	*phys = FUNC3(dma_window, cells);

	dma_window += cells;

	prop = FUNC0(dn, "ibm,#dma-size-cells", NULL);
	cells = prop ? *(u32 *)prop : FUNC2(dn);
	*size = FUNC3(dma_window, cells);
}