
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_11__ {char* name; int * virt; int size; int bankwidth; scalar_t__ phys; } ;
struct platram_info {int free_partitions; TYPE_3__* mtd; int partitions; TYPE_2__ map; int * area; struct platdata_mtd_ram* pdata; TYPE_5__* dev; } ;
struct TYPE_13__ {struct platdata_mtd_ram* platform_data; } ;
struct platform_device {TYPE_5__ dev; scalar_t__ name; } ;
struct platdata_mtd_ram {char** map_probes; int nr_partitions; int partitions; scalar_t__ probes; int bankwidth; int * mapname; } ;
struct TYPE_10__ {TYPE_5__* parent; } ;
struct TYPE_12__ {TYPE_1__ dev; int owner; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int PLATRAM_RW ;
 int THIS_MODULE ;
 scalar_t__ add_mtd_device (TYPE_3__*) ;
 int add_mtd_partitions (TYPE_3__*,int ,int) ;
 int dev_dbg (TYPE_5__*,char*,...) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_info (TYPE_5__*,char*) ;
 void* do_map_probe (char const*,TYPE_2__*) ;
 int * ioremap (scalar_t__,int ) ;
 struct platram_info* kzalloc (int,int ) ;
 int parse_mtd_partitions (TYPE_3__*,scalar_t__,int *,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct platram_info*) ;
 int platram_remove (struct platform_device*) ;
 int platram_setrw (struct platram_info*,int ) ;
 int * request_mem_region (scalar_t__,int ,scalar_t__) ;
 int resource_size (struct resource*) ;
 int simple_map_init (TYPE_2__*) ;

__attribute__((used)) static int platram_probe(struct platform_device *pdev)
{
 struct platdata_mtd_ram *pdata;
 struct platram_info *info;
 struct resource *res;
 int err = 0;

 dev_dbg(&pdev->dev, "probe entered\n");

 if (pdev->dev.platform_data == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data supplied\n");
  err = -ENOENT;
  goto exit_error;
 }

 pdata = pdev->dev.platform_data;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) {
  dev_err(&pdev->dev, "no memory for flash info\n");
  err = -ENOMEM;
  goto exit_error;
 }

 platform_set_drvdata(pdev, info);

 info->dev = &pdev->dev;
 info->pdata = pdata;



 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "no memory resource specified\n");
  err = -ENOENT;
  goto exit_free;
 }

 dev_dbg(&pdev->dev, "got platform resource %p (0x%llx)\n", res,
  (unsigned long long)res->start);



 info->map.phys = res->start;
 info->map.size = resource_size(res);
 info->map.name = pdata->mapname != ((void*)0) ?
   (char *)pdata->mapname : (char *)pdev->name;
 info->map.bankwidth = pdata->bankwidth;



 info->area = request_mem_region(res->start, info->map.size, pdev->name);
 if (info->area == ((void*)0)) {
  dev_err(&pdev->dev, "failed to request memory region\n");
  err = -EIO;
  goto exit_free;
 }



 info->map.virt = ioremap(res->start, info->map.size);
 dev_dbg(&pdev->dev, "virt %p, %lu bytes\n", info->map.virt, info->map.size);

 if (info->map.virt == ((void*)0)) {
  dev_err(&pdev->dev, "failed to ioremap() region\n");
  err = -EIO;
  goto exit_free;
 }

 simple_map_init(&info->map);

 dev_dbg(&pdev->dev, "initialised map, probing for mtd\n");




 if (pdata->map_probes) {
  const char **map_probes = pdata->map_probes;

  for ( ; !info->mtd && *map_probes; map_probes++)
   info->mtd = do_map_probe(*map_probes , &info->map);
 }

 else
  info->mtd = do_map_probe("map_ram", &info->map);

 if (info->mtd == ((void*)0)) {
  dev_err(&pdev->dev, "failed to probe for map_ram\n");
  err = -ENOMEM;
  goto exit_free;
 }

 info->mtd->owner = THIS_MODULE;
 info->mtd->dev.parent = &pdev->dev;

 platram_setrw(info, PLATRAM_RW);
 if (add_mtd_device(info->mtd)) {
  dev_err(&pdev->dev, "add_mtd_device() failed\n");
  err = -ENOMEM;
 }

 if (!err)
  dev_info(&pdev->dev, "registered mtd device\n");

 return err;

 exit_free:
 platram_remove(pdev);
 exit_error:
 return err;
}
