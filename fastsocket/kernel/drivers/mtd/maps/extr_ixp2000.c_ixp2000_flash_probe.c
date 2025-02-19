
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {struct ixp2000_flash_data* platform_data; } ;
struct platform_device {TYPE_5__ dev; TYPE_1__* resource; } ;
struct TYPE_11__ {unsigned long size; int bankwidth; unsigned long map_priv_2; unsigned long map_priv_1; int copy_to; int copy_from; int write; int read; int name; int phys; } ;
struct ixp2000_flash_info {int partitions; TYPE_2__* mtd; TYPE_4__ map; int res; } ;
struct ixp2000_flash_data {unsigned long nr_banks; scalar_t__ bank_setup; struct flash_platform_data* platform_data; } ;
struct flash_platform_data {int width; int map_name; } ;
struct TYPE_10__ {int owner; } ;
struct TYPE_9__ {int end; int start; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int NO_XIP ;
 int THIS_MODULE ;
 int add_mtd_partitions (TYPE_2__*,int ,int) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int dev_info (TYPE_5__*,char*,...) ;
 int dev_name (TYPE_5__*) ;
 TYPE_2__* do_map_probe (int ,TYPE_4__*) ;
 scalar_t__ erratum44_workaround ;
 scalar_t__ ioremap (int,int) ;
 int ixp2000_flash_copy_from ;
 int ixp2000_flash_copy_to ;
 int ixp2000_flash_read8 ;
 int ixp2000_flash_remove (struct platform_device*) ;
 int ixp2000_flash_write8 ;
 scalar_t__ ixp2000_has_broken_slowport () ;
 struct ixp2000_flash_info* kmalloc (int,int ) ;
 int memset (struct ixp2000_flash_info*,int ,int) ;
 int parse_mtd_partitions (TYPE_2__*,char const**,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ixp2000_flash_info*) ;
 int request_mem_region (int,int,int ) ;

__attribute__((used)) static int ixp2000_flash_probe(struct platform_device *dev)
{
 static const char *probes[] = { "RedBoot", "cmdlinepart", ((void*)0) };
 struct ixp2000_flash_data *ixp_data = dev->dev.platform_data;
 struct flash_platform_data *plat;
 struct ixp2000_flash_info *info;
 unsigned long window_size;
 int err = -1;

 if (!ixp_data)
  return -ENODEV;

 plat = ixp_data->platform_data;
 if (!plat)
  return -ENODEV;

 window_size = dev->resource->end - dev->resource->start + 1;
 dev_info(&dev->dev, "Probe of IXP2000 flash(%d banks x %dMiB)\n",
   ixp_data->nr_banks, ((u32)window_size >> 20));

 if (plat->width != 1) {
  dev_err(&dev->dev, "IXP2000 MTD map only supports 8-bit mode, asking for %d\n",
   plat->width * 8);
  return -EIO;
 }

 info = kmalloc(sizeof(struct ixp2000_flash_info), GFP_KERNEL);
 if(!info) {
  err = -ENOMEM;
  goto Error;
 }
 memset(info, 0, sizeof(struct ixp2000_flash_info));

 platform_set_drvdata(dev, info);





 info->map.phys = NO_XIP;

 info->map.size = ixp_data->nr_banks * window_size;
 info->map.bankwidth = 1;




 info->map.map_priv_2 = (unsigned long) ixp_data->bank_setup;

 info->map.name = dev_name(&dev->dev);
 info->map.read = ixp2000_flash_read8;
 info->map.write = ixp2000_flash_write8;
 info->map.copy_from = ixp2000_flash_copy_from;
 info->map.copy_to = ixp2000_flash_copy_to;

 info->res = request_mem_region(dev->resource->start,
   dev->resource->end - dev->resource->start + 1,
   dev_name(&dev->dev));
 if (!info->res) {
  dev_err(&dev->dev, "Could not reserve memory region\n");
  err = -ENOMEM;
  goto Error;
 }

 info->map.map_priv_1 = (unsigned long) ioremap(dev->resource->start,
        dev->resource->end - dev->resource->start + 1);
 if (!info->map.map_priv_1) {
  dev_err(&dev->dev, "Failed to ioremap flash region\n");
  err = -EIO;
  goto Error;
 }
 info->mtd = do_map_probe(plat->map_name, &info->map);
 if (!info->mtd) {
  dev_err(&dev->dev, "map_probe failed\n");
  err = -ENXIO;
  goto Error;
 }
 info->mtd->owner = THIS_MODULE;

 err = parse_mtd_partitions(info->mtd, probes, &info->partitions, 0);
 if (err > 0) {
  err = add_mtd_partitions(info->mtd, info->partitions, err);
  if(err)
   dev_err(&dev->dev, "Could not parse partitions\n");
 }

 if (err)
  goto Error;

 return 0;

Error:
 ixp2000_flash_remove(dev);
 return err;
}
