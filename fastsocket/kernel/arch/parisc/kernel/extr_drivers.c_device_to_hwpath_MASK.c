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
struct parisc_device {int /*<<< orphan*/  hw_path; } ;
struct hardware_path {int /*<<< orphan*/  mod; } ;
struct device {struct device* parent; int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct hardware_path*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  parisc_bus_type ; 
 struct parisc_device* FUNC2 (struct device*) ; 

void FUNC3(struct device *dev, struct hardware_path *path)
{
	struct parisc_device *padev;
	if (dev->bus == &parisc_bus_type) {
		padev = FUNC2(dev);
		FUNC0(dev->parent, path);
		path->mod = padev->hw_path;
	} else if (FUNC1(dev)) {
		FUNC0(dev, path);
	}
}