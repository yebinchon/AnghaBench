
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_13__ {unsigned long size; int virt; int phys; int bankwidth; int name; } ;
struct rbtx4939_flash_info {int nr_parts; TYPE_3__* mtd; int parts; TYPE_1__ map; } ;
struct rbtx4939_flash_data {int nr_parts; int parts; int (* map_init ) (TYPE_1__*) ;int width; } ;
struct TYPE_15__ {struct rbtx4939_flash_data* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_14__ {int owner; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int THIS_MODULE ;
 int add_mtd_device (TYPE_3__*) ;
 int add_mtd_partitions (TYPE_3__*,int ,int) ;
 int dev_err (TYPE_6__*,char*) ;
 int dev_name (TYPE_6__*) ;
 int devm_ioremap (TYPE_6__*,int ,unsigned long) ;
 struct rbtx4939_flash_info* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_request_mem_region (TYPE_6__*,int ,unsigned long,int ) ;
 TYPE_3__* do_map_probe (char const*,TYPE_1__*) ;
 int parse_mtd_partitions (TYPE_3__*,int ,int *,int ) ;
 int part_probe_types ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rbtx4939_flash_info*) ;
 int pr_notice (char*,...) ;
 int rbtx4939_flash_remove (struct platform_device*) ;
 unsigned long resource_size (struct resource*) ;
 char** rom_probe_types ;
 int simple_map_init (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int rbtx4939_flash_probe(struct platform_device *dev)
{
 struct rbtx4939_flash_data *pdata;
 struct rbtx4939_flash_info *info;
 struct resource *res;
 const char **probe_type;
 int err = 0;
 unsigned long size;

 pdata = dev->dev.platform_data;
 if (!pdata)
  return -ENODEV;

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;
 info = devm_kzalloc(&dev->dev, sizeof(struct rbtx4939_flash_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 platform_set_drvdata(dev, info);

 size = resource_size(res);
 pr_notice("rbtx4939 platform flash device: %pR\n", res);

 if (!devm_request_mem_region(&dev->dev, res->start, size,
         dev_name(&dev->dev)))
  return -EBUSY;

 info->map.name = dev_name(&dev->dev);
 info->map.phys = res->start;
 info->map.size = size;
 info->map.bankwidth = pdata->width;

 info->map.virt = devm_ioremap(&dev->dev, info->map.phys, size);
 if (!info->map.virt)
  return -EBUSY;

 if (pdata->map_init)
  (*pdata->map_init)(&info->map);
 else
  simple_map_init(&info->map);

 probe_type = rom_probe_types;
 for (; !info->mtd && *probe_type; probe_type++)
  info->mtd = do_map_probe(*probe_type, &info->map);
 if (!info->mtd) {
  dev_err(&dev->dev, "map_probe failed\n");
  err = -ENXIO;
  goto err_out;
 }
 info->mtd->owner = THIS_MODULE;
 if (err)
  goto err_out;
 add_mtd_device(info->mtd);
 return 0;

err_out:
 rbtx4939_flash_remove(dev);
 return err;
}
