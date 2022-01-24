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
struct msi_counts {int /*<<< orphan*/  num_devices; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int PCI_CLASS_BRIDGE_PCI ; 
 int* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct device_node *dn, void *data)
{
	struct msi_counts *counts = data;
	const u32 *p;
	u32 class;

	FUNC1("rtas_msi: counting %s\n", dn->full_name);

	p = FUNC0(dn, "class-code", NULL);
	class = p ? *p : 0;

	if ((class >> 8) != PCI_CLASS_BRIDGE_PCI)
		counts->num_devices++;

	return NULL;
}