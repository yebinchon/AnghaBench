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
struct resource {unsigned long start; unsigned int flags; int /*<<< orphan*/  name; scalar_t__ end; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IORESOURCE_IO ; 
 unsigned int IORESOURCE_MEM ; 
 scalar_t__ OF_BAD_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct resource*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct device_node*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(struct device_node *dev, const u32 *addrp,
				u64 size, unsigned int flags,
				struct resource *r)
{
	u64 taddr;

	if ((flags & (IORESOURCE_IO | IORESOURCE_MEM)) == 0)
		return -EINVAL;
	taddr = FUNC1(dev, addrp);
	if (taddr == OF_BAD_ADDR)
		return -EINVAL;
	FUNC0(r, 0, sizeof(struct resource));
	if (flags & IORESOURCE_IO) {
		unsigned long port;
		port = -1; /* pci_address_to_pio(taddr); */
		if (port == (unsigned long)-1)
			return -EINVAL;
		r->start = port;
		r->end = port + size - 1;
	} else {
		r->start = taddr;
		r->end = taddr + size - 1;
	}
	r->flags = flags;
	r->name = dev->name;
	return 0;
}