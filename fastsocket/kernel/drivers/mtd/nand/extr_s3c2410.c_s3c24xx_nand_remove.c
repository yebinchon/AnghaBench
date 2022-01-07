
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_mtd {int mtd_count; struct s3c2410_nand_mtd* area; int * regs; int * clk; struct s3c2410_nand_mtd* mtds; int mtd; } ;
struct s3c2410_nand_info {int mtd_count; struct s3c2410_nand_info* area; int * regs; int * clk; struct s3c2410_nand_info* mtds; int mtd; } ;
struct platform_device {int dummy; } ;


 int IS_ERR (int *) ;
 int allow_clk_stop (struct s3c2410_nand_mtd*) ;
 int clk_disable (int *) ;
 int clk_put (int *) ;
 int iounmap (int *) ;
 int kfree (struct s3c2410_nand_mtd*) ;
 int nand_release (int *) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pr_debug (char*,int,struct s3c2410_nand_mtd*) ;
 int release_resource (struct s3c2410_nand_mtd*) ;
 int s3c2410_nand_cpufreq_deregister (struct s3c2410_nand_mtd*) ;
 struct s3c2410_nand_mtd* to_nand_info (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_nand_remove(struct platform_device *pdev)
{
 struct s3c2410_nand_info *info = to_nand_info(pdev);

 platform_set_drvdata(pdev, ((void*)0));

 if (info == ((void*)0))
  return 0;

 s3c2410_nand_cpufreq_deregister(info);





 if (info->mtds != ((void*)0)) {
  struct s3c2410_nand_mtd *ptr = info->mtds;
  int mtdno;

  for (mtdno = 0; mtdno < info->mtd_count; mtdno++, ptr++) {
   pr_debug("releasing mtd %d (%p)\n", mtdno, ptr);
   nand_release(&ptr->mtd);
  }

  kfree(info->mtds);
 }



 if (info->clk != ((void*)0) && !IS_ERR(info->clk)) {
  if (!allow_clk_stop(info))
   clk_disable(info->clk);
  clk_put(info->clk);
 }

 if (info->regs != ((void*)0)) {
  iounmap(info->regs);
  info->regs = ((void*)0);
 }

 if (info->area != ((void*)0)) {
  release_resource(info->area);
  kfree(info->area);
  info->area = ((void*)0);
 }

 kfree(info);

 return 0;
}
