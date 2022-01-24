#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket_data {int /*<<< orphan*/  io_db; } ;
struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* cb_dev; struct socket_data* resource_data; int /*<<< orphan*/  dev; } ;
struct pcmcia_align_data {unsigned long mask; unsigned long offset; int /*<<< orphan*/ * map; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct resource*,int,unsigned long,unsigned long,int,int /*<<< orphan*/ ,struct pcmcia_align_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ioport_resource ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 struct resource* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct resource*,int,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcmcia_align_data*) ; 
 int /*<<< orphan*/  pcmcia_align ; 
 int /*<<< orphan*/  rsrc_mutex ; 

__attribute__((used)) static struct resource *FUNC7(unsigned long base, int num,
		   unsigned long align, struct pcmcia_socket *s)
{
	struct resource *res = FUNC3(0, num, IORESOURCE_IO, FUNC1(&s->dev));
	struct socket_data *s_data = s->resource_data;
	struct pcmcia_align_data data;
	unsigned long min = base;
	int ret;

	if (align == 0)
		align = 0x10000;

	data.mask = align - 1;
	data.offset = base & data.mask;
	data.map = &s_data->io_db;

	FUNC4(&rsrc_mutex);
#ifdef CONFIG_PCI
	if (s->cb_dev) {
		ret = pci_bus_alloc_resource(s->cb_dev->bus, res, num, 1,
					     min, 0, pcmcia_align, &data);
	} else
#endif
		ret = FUNC0(&ioport_resource, res, num, min, ~0UL,
					1, pcmcia_align, &data);
	FUNC5(&rsrc_mutex);

	if (ret != 0) {
		FUNC2(res);
		res = NULL;
	}
	return res;
}