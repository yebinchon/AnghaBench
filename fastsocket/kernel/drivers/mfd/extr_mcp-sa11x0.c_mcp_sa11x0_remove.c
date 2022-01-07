
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mcp {int dummy; } ;


 int mcp_host_unregister (struct mcp*) ;
 struct mcp* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int release_mem_region (int,int) ;

__attribute__((used)) static int mcp_sa11x0_remove(struct platform_device *dev)
{
 struct mcp *mcp = platform_get_drvdata(dev);

 platform_set_drvdata(dev, ((void*)0));
 mcp_host_unregister(mcp);
 release_mem_region(0x80060000, 0x60);

 return 0;
}
