
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_driver {int (* resume ) (struct mcp*) ;} ;
struct mcp {int dummy; } ;
struct device {scalar_t__ driver; } ;


 int stub1 (struct mcp*) ;
 struct mcp* to_mcp (struct device*) ;
 struct mcp_driver* to_mcp_driver (scalar_t__) ;

__attribute__((used)) static int mcp_bus_resume(struct device *dev)
{
 struct mcp *mcp = to_mcp(dev);
 int ret = 0;

 if (dev->driver) {
  struct mcp_driver *drv = to_mcp_driver(dev->driver);

  ret = drv->resume(mcp);
 }
 return ret;
}
