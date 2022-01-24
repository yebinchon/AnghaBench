#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int flags; scalar_t__ end; scalar_t__ start; struct resource* parent; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {int num_resources; TYPE_2__* resources; int /*<<< orphan*/  data_size; int /*<<< orphan*/  platform_data; int /*<<< orphan*/  driver_data; scalar_t__ id; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int flags; scalar_t__ end; scalar_t__ start; struct resource* parent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_IRQ ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *parent, int id,
			  const struct mfd_cell *cell,
			  struct resource *mem_base,
			  int irq_base)
{
	struct resource *res;
	struct platform_device *pdev;
	int ret = -ENOMEM;
	int r;

	pdev = FUNC5(cell->name, id + cell->id);
	if (!pdev)
		goto fail_alloc;

	res = FUNC1(sizeof(*res) * cell->num_resources, GFP_KERNEL);
	if (!res)
		goto fail_device;

	pdev->dev.parent = parent;
	FUNC7(pdev, cell->driver_data);

	ret = FUNC3(pdev,
			cell->platform_data, cell->data_size);
	if (ret)
		goto fail_res;

	for (r = 0; r < cell->num_resources; r++) {
		res[r].name = cell->resources[r].name;
		res[r].flags = cell->resources[r].flags;

		/* Find out base to use */
		if ((cell->resources[r].flags & IORESOURCE_MEM) && mem_base) {
			res[r].parent = mem_base;
			res[r].start = mem_base->start +
				cell->resources[r].start;
			res[r].end = mem_base->start +
				cell->resources[r].end;
		} else if (cell->resources[r].flags & IORESOURCE_IRQ) {
			res[r].start = irq_base +
				cell->resources[r].start;
			res[r].end   = irq_base +
				cell->resources[r].end;
		} else {
			res[r].parent = cell->resources[r].parent;
			res[r].start = cell->resources[r].start;
			res[r].end   = cell->resources[r].end;
		}
	}

	FUNC4(pdev, res, cell->num_resources);

	ret = FUNC2(pdev);
	if (ret)
		goto fail_res;

	FUNC0(res);

	return 0;

/*	platform_device_del(pdev); */
fail_res:
	FUNC0(res);
fail_device:
	FUNC6(pdev);
fail_alloc:
	return ret;
}