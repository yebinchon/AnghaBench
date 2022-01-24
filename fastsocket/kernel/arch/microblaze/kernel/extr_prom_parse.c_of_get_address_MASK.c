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
typedef  int /*<<< orphan*/  u32 ;
struct of_bus {unsigned int (* get_flags ) (int /*<<< orphan*/  const*) ;int /*<<< orphan*/  addresses; int /*<<< orphan*/  (* count_cells ) (struct device_node*,int*,int*) ;} ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,int /*<<< orphan*/ ,int*) ; 
 struct of_bus* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int*,int*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/  const*) ; 

const u32 *FUNC8(struct device_node *dev, int index, u64 *size,
			unsigned int *flags)
{
	const u32 *prop;
	unsigned int psize;
	struct device_node *parent;
	struct of_bus *bus;
	int onesize, i, na, ns;

	/* Get parent & match bus type */
	parent = FUNC1(dev);
	if (parent == NULL)
		return NULL;
	bus = FUNC3(parent);
	bus->count_cells(dev, &na, &ns);
	FUNC4(parent);
	if (!FUNC0(na, ns))
		return NULL;

	/* Get "reg" or "assigned-addresses" property */
	prop = FUNC2(dev, bus->addresses, (int *) &psize);
	if (prop == NULL)
		return NULL;
	psize /= 4;

	onesize = na + ns;
	for (i = 0; psize >= onesize; psize -= onesize, prop += onesize, i++)
		if (i == index) {
			if (size)
				*size = FUNC5(prop + na, ns);
			if (flags)
				*flags = bus->get_flags(prop);
			return prop;
		}
	return NULL;
}