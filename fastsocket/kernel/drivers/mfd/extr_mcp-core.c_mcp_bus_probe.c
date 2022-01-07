
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp_driver {int (* probe ) (struct mcp*) ;} ;
struct mcp {int dummy; } ;
struct device {int driver; } ;


 int stub1 (struct mcp*) ;
 struct mcp* to_mcp (struct device*) ;
 struct mcp_driver* to_mcp_driver (int ) ;

__attribute__((used)) static int mcp_bus_probe(struct device *dev)
{
 struct mcp *mcp = to_mcp(dev);
 struct mcp_driver *drv = to_mcp_driver(dev->driver);

 return drv->probe(mcp);
}
