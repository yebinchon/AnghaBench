
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int flags; scalar_t__ end; scalar_t__ start; struct resource* parent; int name; } ;
struct TYPE_3__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mfd_cell {int num_resources; TYPE_2__* resources; int data_size; int platform_data; int driver_data; scalar_t__ id; int name; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int flags; scalar_t__ end; scalar_t__ start; struct resource* parent; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,int ,int ) ;
 int platform_device_add_resources (struct platform_device*,struct resource*,int) ;
 struct platform_device* platform_device_alloc (int ,scalar_t__) ;
 int platform_device_put (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int ) ;

__attribute__((used)) static int mfd_add_device(struct device *parent, int id,
     const struct mfd_cell *cell,
     struct resource *mem_base,
     int irq_base)
{
 struct resource *res;
 struct platform_device *pdev;
 int ret = -ENOMEM;
 int r;

 pdev = platform_device_alloc(cell->name, id + cell->id);
 if (!pdev)
  goto fail_alloc;

 res = kzalloc(sizeof(*res) * cell->num_resources, GFP_KERNEL);
 if (!res)
  goto fail_device;

 pdev->dev.parent = parent;
 platform_set_drvdata(pdev, cell->driver_data);

 ret = platform_device_add_data(pdev,
   cell->platform_data, cell->data_size);
 if (ret)
  goto fail_res;

 for (r = 0; r < cell->num_resources; r++) {
  res[r].name = cell->resources[r].name;
  res[r].flags = cell->resources[r].flags;


  if ((cell->resources[r].flags & IORESOURCE_MEM) && mem_base) {
   res[r].parent = mem_base;
   res[r].start = mem_base->start +
    cell->resources[r].start;
   res[r].end = mem_base->start +
    cell->resources[r].end;
  } else if (cell->resources[r].flags & IORESOURCE_IRQ) {
   res[r].start = irq_base +
    cell->resources[r].start;
   res[r].end = irq_base +
    cell->resources[r].end;
  } else {
   res[r].parent = cell->resources[r].parent;
   res[r].start = cell->resources[r].start;
   res[r].end = cell->resources[r].end;
  }
 }

 platform_device_add_resources(pdev, res, cell->num_resources);

 ret = platform_device_add(pdev);
 if (ret)
  goto fail_res;

 kfree(res);

 return 0;


fail_res:
 kfree(res);
fail_device:
 platform_device_put(pdev);
fail_alloc:
 return ret;
}
