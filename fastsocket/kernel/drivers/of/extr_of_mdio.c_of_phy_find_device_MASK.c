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
struct phy_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mdio_bus_type ; 
 int /*<<< orphan*/  of_phy_match ; 
 struct phy_device* FUNC1 (struct device*) ; 

struct phy_device *FUNC2(struct device_node *phy_np)
{
	struct device *d;
	if (!phy_np)
		return NULL;

	d = FUNC0(&mdio_bus_type, NULL, phy_np, of_phy_match);
	return d ? FUNC1(d) : NULL;
}