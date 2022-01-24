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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PCIBIOS_BAD_REGISTER_NUMBER ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__* hv_cfg_write_func ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(struct pci_bus *bus, unsigned int devfn,
		int offset, int size, u32 val)
{
	struct device_node *node = FUNC1(bus->number, devfn);
	u64 fn;
	u64 ret;

	if (node == NULL)
		return PCIBIOS_DEVICE_NOT_FOUND;
	if (offset > 255)
		return PCIBIOS_BAD_REGISTER_NUMBER;

	fn = hv_cfg_write_func[(size - 1) & 3];
	ret = FUNC0(fn, FUNC2(node), offset, val, 0);

	if (ret != 0)
		return PCIBIOS_DEVICE_NOT_FOUND;

	return 0;
}