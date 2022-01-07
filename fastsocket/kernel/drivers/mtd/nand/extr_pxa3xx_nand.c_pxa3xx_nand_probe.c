
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct pxa3xx_nand_platform_data {int nr_parts; int parts; } ;
struct nand_chip {int dummy; } ;
struct pxa3xx_nand_info {int clk; int * mmio_base; struct mtd_info* data_buff; int data_buff_phys; int data_buff_size; int data_dma_ch; int drcmr_cmd; int drcmr_dat; struct nand_chip nand_chip; struct platform_device* pdev; } ;
struct TYPE_4__ {struct pxa3xx_nand_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct mtd_info {int owner; struct pxa3xx_nand_info* priv; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_DMA ;
 int IORESOURCE_MEM ;
 int IRQF_DISABLED ;
 int IRQ_NAND ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int add_mtd_partitions (struct mtd_info*,int ,int ) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get (TYPE_1__*,int *) ;
 int clk_put (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dma_free_coherent (TYPE_1__*,int ,struct mtd_info*,int ) ;
 int free_irq (int ,struct pxa3xx_nand_info*) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int kfree (struct mtd_info*) ;
 struct mtd_info* kzalloc (int,int ) ;
 scalar_t__ nand_scan (struct mtd_info*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct mtd_info*) ;
 int pxa3xx_nand_detect_flash (struct pxa3xx_nand_info*,struct pxa3xx_nand_platform_data*) ;
 int pxa3xx_nand_init_buff (struct pxa3xx_nand_info*) ;
 int pxa3xx_nand_init_mtd (struct mtd_info*,struct pxa3xx_nand_info*) ;
 int pxa3xx_nand_irq ;
 int pxa_free_dma (int ) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct pxa3xx_nand_info*) ;
 struct resource* request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static int pxa3xx_nand_probe(struct platform_device *pdev)
{
 struct pxa3xx_nand_platform_data *pdata;
 struct pxa3xx_nand_info *info;
 struct nand_chip *this;
 struct mtd_info *mtd;
 struct resource *r;
 int ret = 0, irq;

 pdata = pdev->dev.platform_data;

 if (!pdata) {
  dev_err(&pdev->dev, "no platform data defined\n");
  return -ENODEV;
 }

 mtd = kzalloc(sizeof(struct mtd_info) + sizeof(struct pxa3xx_nand_info),
   GFP_KERNEL);
 if (!mtd) {
  dev_err(&pdev->dev, "failed to allocate memory\n");
  return -ENOMEM;
 }

 info = (struct pxa3xx_nand_info *)(&mtd[1]);
 info->pdev = pdev;

 this = &info->nand_chip;
 mtd->priv = info;
 mtd->owner = THIS_MODULE;

 info->clk = clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(info->clk)) {
  dev_err(&pdev->dev, "failed to get nand clock\n");
  ret = PTR_ERR(info->clk);
  goto fail_free_mtd;
 }
 clk_enable(info->clk);

 r = platform_get_resource(pdev, IORESOURCE_DMA, 0);
 if (r == ((void*)0)) {
  dev_err(&pdev->dev, "no resource defined for data DMA\n");
  ret = -ENXIO;
  goto fail_put_clk;
 }
 info->drcmr_dat = r->start;

 r = platform_get_resource(pdev, IORESOURCE_DMA, 1);
 if (r == ((void*)0)) {
  dev_err(&pdev->dev, "no resource defined for command DMA\n");
  ret = -ENXIO;
  goto fail_put_clk;
 }
 info->drcmr_cmd = r->start;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "no IRQ resource defined\n");
  ret = -ENXIO;
  goto fail_put_clk;
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  dev_err(&pdev->dev, "no IO memory resource defined\n");
  ret = -ENODEV;
  goto fail_put_clk;
 }

 r = request_mem_region(r->start, resource_size(r), pdev->name);
 if (r == ((void*)0)) {
  dev_err(&pdev->dev, "failed to request memory resource\n");
  ret = -EBUSY;
  goto fail_put_clk;
 }

 info->mmio_base = ioremap(r->start, resource_size(r));
 if (info->mmio_base == ((void*)0)) {
  dev_err(&pdev->dev, "ioremap() failed\n");
  ret = -ENODEV;
  goto fail_free_res;
 }

 ret = pxa3xx_nand_init_buff(info);
 if (ret)
  goto fail_free_io;

 ret = request_irq(IRQ_NAND, pxa3xx_nand_irq, IRQF_DISABLED,
    pdev->name, info);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to request IRQ\n");
  goto fail_free_buf;
 }

 ret = pxa3xx_nand_detect_flash(info, pdata);
 if (ret) {
  dev_err(&pdev->dev, "failed to detect flash\n");
  ret = -ENODEV;
  goto fail_free_irq;
 }

 pxa3xx_nand_init_mtd(mtd, info);

 platform_set_drvdata(pdev, mtd);

 if (nand_scan(mtd, 1)) {
  dev_err(&pdev->dev, "failed to scan nand\n");
  ret = -ENXIO;
  goto fail_free_irq;
 }

 return add_mtd_partitions(mtd, pdata->parts, pdata->nr_parts);

fail_free_irq:
 free_irq(IRQ_NAND, info);
fail_free_buf:
 if (use_dma) {
  pxa_free_dma(info->data_dma_ch);
  dma_free_coherent(&pdev->dev, info->data_buff_size,
   info->data_buff, info->data_buff_phys);
 } else
  kfree(info->data_buff);
fail_free_io:
 iounmap(info->mmio_base);
fail_free_res:
 release_mem_region(r->start, resource_size(r));
fail_put_clk:
 clk_disable(info->clk);
 clk_put(info->clk);
fail_free_mtd:
 kfree(mtd);
 return ret;
}
