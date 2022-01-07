
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sa1111_dev_info {int irq; int skpcr_mask; scalar_t__ offset; int devid; } ;
struct TYPE_12__ {int* dma_mask; int coherent_dma_mask; int release; int * bus; TYPE_1__* parent; } ;
struct TYPE_11__ {int name; int flags; scalar_t__ start; scalar_t__ end; } ;
struct sa1111_dev {int dma_mask; TYPE_4__ dev; TYPE_2__ res; int irq; int skpcr_mask; scalar_t__ mapbase; int devid; } ;
struct sa1111 {TYPE_1__* dev; scalar_t__ base; scalar_t__ phys; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int* dma_mask; int coherent_dma_mask; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_name (TYPE_4__*) ;
 int dev_set_name (TYPE_4__*,char*,...) ;
 int device_register (TYPE_4__*) ;
 int device_unregister (TYPE_4__*) ;
 int dmabounce_register_dev (TYPE_4__*,int,int) ;
 int kfree (struct sa1111_dev*) ;
 struct sa1111_dev* kzalloc (int,int ) ;
 int memmove (int ,int ,int) ;
 int printk (char*,int ) ;
 int release_resource (TYPE_2__*) ;
 int request_resource (struct resource*,TYPE_2__*) ;
 int sa1111_bus_type ;
 int sa1111_dev_release ;

__attribute__((used)) static int
sa1111_init_one_child(struct sa1111 *sachip, struct resource *parent,
        struct sa1111_dev_info *info)
{
 struct sa1111_dev *dev;
 int ret;

 dev = kzalloc(sizeof(struct sa1111_dev), GFP_KERNEL);
 if (!dev) {
  ret = -ENOMEM;
  goto out;
 }

 dev_set_name(&dev->dev, "%4.4lx", info->offset);
 dev->devid = info->devid;
 dev->dev.parent = sachip->dev;
 dev->dev.bus = &sa1111_bus_type;
 dev->dev.release = sa1111_dev_release;
 dev->dev.coherent_dma_mask = sachip->dev->coherent_dma_mask;
 dev->res.start = sachip->phys + info->offset;
 dev->res.end = dev->res.start + 511;
 dev->res.name = dev_name(&dev->dev);
 dev->res.flags = IORESOURCE_MEM;
 dev->mapbase = sachip->base + info->offset;
 dev->skpcr_mask = info->skpcr_mask;
 memmove(dev->irq, info->irq, sizeof(dev->irq));

 ret = request_resource(parent, &dev->res);
 if (ret) {
  printk("SA1111: failed to allocate resource for %s\n",
   dev->res.name);
  dev_set_name(&dev->dev, ((void*)0));
  kfree(dev);
  goto out;
 }


 ret = device_register(&dev->dev);
 if (ret) {
  release_resource(&dev->res);
  kfree(dev);
  goto out;
 }
out:
 return ret;
}
