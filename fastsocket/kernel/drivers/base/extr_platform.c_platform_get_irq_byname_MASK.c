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
struct resource {int start; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 struct resource* FUNC0 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 

int FUNC1(struct platform_device *dev, const char *name)
{
	struct resource *r = FUNC0(dev, IORESOURCE_IRQ,
							  name);

	return r ? r->start : -ENXIO;
}