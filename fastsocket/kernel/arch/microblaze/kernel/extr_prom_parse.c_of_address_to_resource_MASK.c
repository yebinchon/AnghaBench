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
struct resource {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct device_node*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int,struct resource*) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,int,int /*<<< orphan*/ *,unsigned int*) ; 

int FUNC2(struct device_node *dev, int index,
			struct resource *r)
{
	const u32	*addrp;
	u64		size;
	unsigned int	flags;

	addrp = FUNC1(dev, index, &size, &flags);
	if (addrp == NULL)
		return -EINVAL;
	return FUNC0(dev, addrp, size, flags, r);
}