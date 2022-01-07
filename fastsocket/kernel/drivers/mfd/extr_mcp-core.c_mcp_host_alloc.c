
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int dma_mask; int * bus; struct device* parent; } ;
struct mcp {TYPE_1__ attached_device; int lock; } ;
struct device {int dma_mask; } ;


 int GFP_KERNEL ;
 struct mcp* kzalloc (int,int ) ;
 int mcp_bus_type ;
 int mcp_release ;
 int spin_lock_init (int *) ;

struct mcp *mcp_host_alloc(struct device *parent, size_t size)
{
 struct mcp *mcp;

 mcp = kzalloc(sizeof(struct mcp) + size, GFP_KERNEL);
 if (mcp) {
  spin_lock_init(&mcp->lock);
  mcp->attached_device.parent = parent;
  mcp->attached_device.bus = &mcp_bus_type;
  mcp->attached_device.dma_mask = parent->dma_mask;
  mcp->attached_device.release = mcp_release;
 }
 return mcp;
}
