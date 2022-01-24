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
struct TYPE_2__ {struct device* parent; } ;
struct iscsi_iface {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct iscsi_iface* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct iscsi_iface *iface = FUNC0(dev);
	struct device *parent = iface->dev.parent;

	FUNC1(iface);
	FUNC2(parent);
}