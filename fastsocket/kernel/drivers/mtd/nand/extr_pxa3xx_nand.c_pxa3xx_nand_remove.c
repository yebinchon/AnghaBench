
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct pxa3xx_nand_info {int clk; int mmio_base; struct mtd_info* data_buff; int data_buff_phys; int data_buff_size; int data_dma_ch; } ;
struct platform_device {int dev; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;


 int IORESOURCE_MEM ;
 int IRQ_NAND ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int del_mtd_device (struct mtd_info*) ;
 int del_mtd_partitions (struct mtd_info*) ;
 int dma_free_writecombine (int *,int ,struct mtd_info*,int ) ;
 int free_irq (int ,struct pxa3xx_nand_info*) ;
 int iounmap (int ) ;
 int kfree (struct mtd_info*) ;
 struct mtd_info* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pxa_free_dma (int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static int pxa3xx_nand_remove(struct platform_device *pdev)
{
 struct mtd_info *mtd = platform_get_drvdata(pdev);
 struct pxa3xx_nand_info *info = mtd->priv;
 struct resource *r;

 platform_set_drvdata(pdev, ((void*)0));

 del_mtd_device(mtd);
 del_mtd_partitions(mtd);
 free_irq(IRQ_NAND, info);
 if (use_dma) {
  pxa_free_dma(info->data_dma_ch);
  dma_free_writecombine(&pdev->dev, info->data_buff_size,
    info->data_buff, info->data_buff_phys);
 } else
  kfree(info->data_buff);

 iounmap(info->mmio_base);
 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(r->start, resource_size(r));

 clk_disable(info->clk);
 clk_put(info->clk);

 kfree(mtd);
 return 0;
}
