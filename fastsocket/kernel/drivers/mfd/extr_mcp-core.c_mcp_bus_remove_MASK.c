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
struct mcp_driver {int /*<<< orphan*/  (* remove ) (struct mcp*) ;} ;
struct mcp {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcp*) ; 
 struct mcp* FUNC1 (struct device*) ; 
 struct mcp_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct mcp *mcp = FUNC1(dev);
	struct mcp_driver *drv = FUNC2(dev->driver);

	drv->remove(mcp);
	return 0;
}