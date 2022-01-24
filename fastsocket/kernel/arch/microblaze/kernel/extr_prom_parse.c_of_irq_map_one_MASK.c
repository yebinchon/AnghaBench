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
struct of_irq {int dummy; } ;
struct device_node {int full_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int* FUNC0 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,int const*,int,int const*,struct of_irq*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int const,int) ; 

int FUNC5(struct device_node *device,
			int index, struct of_irq *out_irq)
{
	struct device_node *p;
	const u32 *intspec, *tmp, *addr;
	u32 intsize, intlen;
	int res;

	FUNC4("of_irq_map_one: dev=%s, index=%d\n",
			device->full_name, index);

	/* Get the interrupts property */
	intspec = FUNC0(device, "interrupts", (int *) &intlen);
	if (intspec == NULL)
		return -EINVAL;
	intlen /= sizeof(u32);

	FUNC4(" intspec=%d intlen=%d\n", *intspec, intlen);

	/* Get the reg property (if any) */
	addr = FUNC0(device, "reg", NULL);

	/* Look for the interrupt parent. */
	p = FUNC1(device);
	if (p == NULL)
		return -EINVAL;

	/* Get size of interrupt specifier */
	tmp = FUNC0(p, "#interrupt-cells", NULL);
	if (tmp == NULL) {
		FUNC3(p);
		return -EINVAL;
	}
	intsize = *tmp;

	FUNC4(" intsize=%d intlen=%d\n", intsize, intlen);

	/* Check index */
	if ((index + 1) * intsize > intlen)
		return -EINVAL;

	/* Get new specifier and map it */
	res = FUNC2(p, intspec + index * intsize, intsize,
				addr, out_irq);
	FUNC3(p);
	return res;
}