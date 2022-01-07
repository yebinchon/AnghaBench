
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int attached_device; } ;


 int dev_set_name (int *,char*) ;
 int device_register (int *) ;

int mcp_host_register(struct mcp *mcp)
{
 dev_set_name(&mcp->attached_device, "mcp0");
 return device_register(&mcp->attached_device);
}
