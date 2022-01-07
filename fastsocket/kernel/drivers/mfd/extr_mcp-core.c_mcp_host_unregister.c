
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp {int attached_device; } ;


 int device_unregister (int *) ;

void mcp_host_unregister(struct mcp *mcp)
{
 device_unregister(&mcp->attached_device);
}
