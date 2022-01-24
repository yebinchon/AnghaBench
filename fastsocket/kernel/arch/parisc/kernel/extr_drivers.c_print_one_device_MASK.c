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
struct parisc_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct parisc_device*) ; 
 struct parisc_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device * dev, void * data)
{
	struct parisc_device * pdev = FUNC2(dev);

	if (FUNC0(dev))
		FUNC1(pdev);
	return 0;
}