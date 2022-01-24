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
struct resource {int dummy; } ;
struct pcmcia_socket {scalar_t__ cb_dev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int IORESOURCE_BUSY ; 
 int IORESOURCE_MEM ; 
 struct resource iomem_resource ; 
 struct resource ioport_resource ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 struct resource* FUNC2 (scalar_t__,struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*,struct resource*) ; 

__attribute__((used)) static struct resource *
FUNC4(struct pcmcia_socket *s, resource_size_t base,
		resource_size_t size, int type, char *name)
{
	struct resource *res, *parent;

	parent = type & IORESOURCE_MEM ? &iomem_resource : &ioport_resource;
	res = FUNC1(base, size, type | IORESOURCE_BUSY, name);

	if (res) {
#ifdef CONFIG_PCI
		if (s && s->cb_dev)
			parent = pci_find_parent_resource(s->cb_dev, res);
#endif
		if (!parent || FUNC3(parent, res)) {
			FUNC0(res);
			res = NULL;
		}
	}
	return res;
}