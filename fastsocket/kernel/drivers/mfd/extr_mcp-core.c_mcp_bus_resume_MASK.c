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
struct mcp_driver {int (* resume ) (struct mcp*) ;} ;
struct mcp {int dummy; } ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int FUNC0 (struct mcp*) ; 
 struct mcp* FUNC1 (struct device*) ; 
 struct mcp_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct mcp *mcp = FUNC1(dev);
	int ret = 0;

	if (dev->driver) {
		struct mcp_driver *drv = FUNC2(dev->driver);

		ret = drv->resume(mcp);
	}
	return ret;
}