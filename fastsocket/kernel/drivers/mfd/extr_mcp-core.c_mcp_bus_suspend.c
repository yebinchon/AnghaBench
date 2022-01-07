
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_driver {int (* suspend ) (struct mcp*,int ) ;} ;
struct mcp {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef int pm_message_t ;


 int stub1 (struct mcp*,int ) ;
 struct mcp* to_mcp (struct device*) ;
 struct mcp_driver* to_mcp_driver (scalar_t__) ;

__attribute__((used)) static int mcp_bus_suspend(struct device *dev, pm_message_t state)
{
 struct mcp *mcp = to_mcp(dev);
 int ret = 0;

 if (dev->driver) {
  struct mcp_driver *drv = to_mcp_driver(dev->driver);

  ret = drv->suspend(mcp, state);
 }
 return ret;
}
