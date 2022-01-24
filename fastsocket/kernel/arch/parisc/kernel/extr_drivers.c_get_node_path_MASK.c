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
struct hardware_path {int* bc; int mod; } ;
struct device {struct device* parent; int /*<<< orphan*/ * bus; } ;
struct TYPE_4__ {int hw_path; } ;
struct TYPE_3__ {unsigned int devfn; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int**,int,int) ; 
 int /*<<< orphan*/  parisc_bus_type ; 
 struct device root ; 
 TYPE_2__* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev, struct hardware_path *path)
{
	int i = 5;
	FUNC3(&path->bc, -1, 6);

	if (FUNC2(dev)) {
		unsigned int devfn = FUNC5(dev)->devfn;
		path->mod = FUNC0(devfn);
		path->bc[i--] = FUNC1(devfn);
		dev = dev->parent;
	}

	while (dev != &root) {
		if (FUNC2(dev)) {
			unsigned int devfn = FUNC5(dev)->devfn;
			path->bc[i--] = FUNC1(devfn) | (FUNC0(devfn)<< 5);
		} else if (dev->bus == &parisc_bus_type) {
			path->bc[i--] = FUNC4(dev)->hw_path;
		}
		dev = dev->parent;
	}
}