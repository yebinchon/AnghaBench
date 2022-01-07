
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s3c2410_platform_nand {int nr_sets; struct s3c2410_nand_set* sets; } ;
struct s3c2410_nand_set {int nr_chips; } ;
struct TYPE_3__ {int wq; int lock; } ;
struct s3c2410_nand_mtd {int cpu_type; int mtd_count; scalar_t__ scan_res; int clk; int mtd; struct s3c2410_nand_mtd* mtds; int * regs; struct s3c2410_platform_nand* platform; int * device; int * area; TYPE_1__ controller; } ;
struct s3c2410_nand_info {int cpu_type; int mtd_count; scalar_t__ scan_res; int clk; int mtd; struct s3c2410_nand_info* mtds; int * regs; struct s3c2410_platform_nand* platform; int * device; int * area; TYPE_1__ controller; } ;
struct resource {int end; int start; } ;
struct platform_device {int dev; int name; struct resource* resource; } ;
typedef enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_4__ {int driver_data; } ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ allow_clk_stop (struct s3c2410_nand_mtd*) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get (int *,char*) ;
 int dev_dbg (int *,char*,int *) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int init_waitqueue_head (int *) ;
 int * ioremap (int,int) ;
 void* kmalloc (int,int ) ;
 int memset (struct s3c2410_nand_mtd*,int ,int) ;
 scalar_t__ nand_scan_ident (int *,int) ;
 int nand_scan_tail (int *) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct s3c2410_nand_mtd*) ;
 int pr_debug (char*,...) ;
 int * request_mem_region (int,int,int ) ;
 int s3c2410_nand_add_partition (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ;
 int s3c2410_nand_cpufreq_register (struct s3c2410_nand_mtd*) ;
 int s3c2410_nand_init_chip (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*,struct s3c2410_nand_set*) ;
 int s3c2410_nand_inithw (struct s3c2410_nand_mtd*) ;
 int s3c2410_nand_update_chip (struct s3c2410_nand_mtd*,struct s3c2410_nand_mtd*) ;
 int s3c24xx_nand_remove (struct platform_device*) ;
 int spin_lock_init (int *) ;
 struct s3c2410_platform_nand* to_nand_plat (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_nand_probe(struct platform_device *pdev)
{
 struct s3c2410_platform_nand *plat = to_nand_plat(pdev);
 enum s3c_cpu_type cpu_type;
 struct s3c2410_nand_info *info;
 struct s3c2410_nand_mtd *nmtd;
 struct s3c2410_nand_set *sets;
 struct resource *res;
 int err = 0;
 int size;
 int nr_sets;
 int setno;

 cpu_type = platform_get_device_id(pdev)->driver_data;

 pr_debug("s3c2410_nand_probe(%p)\n", pdev);

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (info == ((void*)0)) {
  dev_err(&pdev->dev, "no memory for flash info\n");
  err = -ENOMEM;
  goto exit_error;
 }

 memset(info, 0, sizeof(*info));
 platform_set_drvdata(pdev, info);

 spin_lock_init(&info->controller.lock);
 init_waitqueue_head(&info->controller.wq);



 info->clk = clk_get(&pdev->dev, "nand");
 if (IS_ERR(info->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  err = -ENOENT;
  goto exit_error;
 }

 clk_enable(info->clk);




 res = pdev->resource;
 size = res->end - res->start + 1;

 info->area = request_mem_region(res->start, size, pdev->name);

 if (info->area == ((void*)0)) {
  dev_err(&pdev->dev, "cannot reserve register region\n");
  err = -ENOENT;
  goto exit_error;
 }

 info->device = &pdev->dev;
 info->platform = plat;
 info->regs = ioremap(res->start, size);
 info->cpu_type = cpu_type;

 if (info->regs == ((void*)0)) {
  dev_err(&pdev->dev, "cannot reserve register region\n");
  err = -EIO;
  goto exit_error;
 }

 dev_dbg(&pdev->dev, "mapped registers at %p\n", info->regs);



 err = s3c2410_nand_inithw(info);
 if (err != 0)
  goto exit_error;

 sets = (plat != ((void*)0)) ? plat->sets : ((void*)0);
 nr_sets = (plat != ((void*)0)) ? plat->nr_sets : 1;

 info->mtd_count = nr_sets;



 size = nr_sets * sizeof(*info->mtds);
 info->mtds = kmalloc(size, GFP_KERNEL);
 if (info->mtds == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate mtd storage\n");
  err = -ENOMEM;
  goto exit_error;
 }

 memset(info->mtds, 0, size);



 nmtd = info->mtds;

 for (setno = 0; setno < nr_sets; setno++, nmtd++) {
  pr_debug("initialising set %d (%p, info %p)\n", setno, nmtd, info);

  s3c2410_nand_init_chip(info, nmtd, sets);

  nmtd->scan_res = nand_scan_ident(&nmtd->mtd,
       (sets) ? sets->nr_chips : 1);

  if (nmtd->scan_res == 0) {
   s3c2410_nand_update_chip(info, nmtd);
   nand_scan_tail(&nmtd->mtd);
   s3c2410_nand_add_partition(info, nmtd, sets);
  }

  if (sets != ((void*)0))
   sets++;
 }

 err = s3c2410_nand_cpufreq_register(info);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to init cpufreq support\n");
  goto exit_error;
 }

 if (allow_clk_stop(info)) {
  dev_info(&pdev->dev, "clock idle support enabled\n");
  clk_disable(info->clk);
 }

 pr_debug("initialised ok\n");
 return 0;

 exit_error:
 s3c24xx_nand_remove(pdev);

 if (err == 0)
  err = -EINVAL;
 return err;
}
