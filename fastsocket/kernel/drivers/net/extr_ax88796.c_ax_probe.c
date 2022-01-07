
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; int flags; int end; } ;
struct TYPE_6__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct net_device {int irq; unsigned long base_addr; } ;
struct ax_device {int irqflags; int* reg_offsets; int * mem; int * mem2; int * map2; TYPE_1__* plat; struct platform_device* dev; int mii_lock; } ;
struct TYPE_5__ {int* reg_offset; int * mem; int rxcr_base; } ;
struct TYPE_4__ {int* reg_offsets; int rcr_val; } ;


 int ENOMEM ;
 int ENXIO ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int IRQF_TRIGGER_MASK ;
 struct net_device* ax__alloc_ei_netdev (int) ;
 int ax_init_dev (struct net_device*,int) ;
 int dev_err (TYPE_3__*,char*,...) ;
 TYPE_2__ ei_status ;
 int free_netdev (struct net_device*) ;
 void* ioremap (int,size_t) ;
 int iounmap (int *) ;
 int kfree (int *) ;
 int memset (struct ax_device*,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int release_resource (int *) ;
 void* request_mem_region (int,size_t,int ) ;
 int spin_lock_init (int *) ;
 struct ax_device* to_ax_dev (struct net_device*) ;

__attribute__((used)) static int ax_probe(struct platform_device *pdev)
{
 struct net_device *dev;
 struct ax_device *ax;
 struct resource *res;
 size_t size;
 int ret = 0;

 dev = ax__alloc_ei_netdev(sizeof(struct ax_device));
 if (dev == ((void*)0))
  return -ENOMEM;


 ax = to_ax_dev(dev);

 memset(ax, 0, sizeof(struct ax_device));

 spin_lock_init(&ax->mii_lock);

 ax->dev = pdev;
 ax->plat = pdev->dev.platform_data;
 platform_set_drvdata(pdev, dev);

 ei_status.rxcr_base = ax->plat->rcr_val;



 res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no IRQ specified\n");
  goto exit_mem;
 }

 dev->irq = res->start;
 ax->irqflags = res->flags & IRQF_TRIGGER_MASK;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no MEM specified\n");
  ret = -ENXIO;
  goto exit_mem;
 }

 size = (res->end - res->start) + 1;




 if (ax->plat->reg_offsets)
  ei_status.reg_offset = ax->plat->reg_offsets;
 else {
  ei_status.reg_offset = ax->reg_offsets;
  for (ret = 0; ret < 0x18; ret++)
   ax->reg_offsets[ret] = (size / 0x18) * ret;
 }

 ax->mem = request_mem_region(res->start, size, pdev->name);
 if (ax->mem == ((void*)0)) {
  dev_err(&pdev->dev, "cannot reserve registers\n");
   ret = -ENXIO;
  goto exit_mem;
 }

 ei_status.mem = ioremap(res->start, size);
 dev->base_addr = (unsigned long)ei_status.mem;

 if (ei_status.mem == ((void*)0)) {
  dev_err(&pdev->dev, "Cannot ioremap area (%08llx,%08llx)\n",
   (unsigned long long)res->start,
   (unsigned long long)res->end);

   ret = -ENXIO;
  goto exit_req;
 }



 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (res == ((void*)0)) {
  if (!ax->plat->reg_offsets) {
   for (ret = 0; ret < 0x20; ret++)
    ax->reg_offsets[ret] = (size / 0x20) * ret;
  }

  ax->map2 = ((void*)0);
 } else {
   size = (res->end - res->start) + 1;

  ax->mem2 = request_mem_region(res->start, size, pdev->name);
  if (ax->mem == ((void*)0)) {
   dev_err(&pdev->dev, "cannot reserve registers\n");
   ret = -ENXIO;
   goto exit_mem1;
  }

  ax->map2 = ioremap(res->start, size);
  if (ax->map2 == ((void*)0)) {
   dev_err(&pdev->dev, "cannot map reset register\n");
   ret = -ENXIO;
   goto exit_mem2;
  }

  ei_status.reg_offset[0x1f] = ax->map2 - ei_status.mem;
 }



 ret = ax_init_dev(dev, 1);
 if (!ret)
  return 0;

 if (ax->map2 == ((void*)0))
  goto exit_mem1;

 iounmap(ax->map2);

 exit_mem2:
 release_resource(ax->mem2);
 kfree(ax->mem2);

 exit_mem1:
 iounmap(ei_status.mem);

 exit_req:
 release_resource(ax->mem);
 kfree(ax->mem);

 exit_mem:
 free_netdev(dev);

 return ret;
}
