
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_dma_desc {int dummy; } ;
struct pxa3xx_nand_info {int data_buff_size; scalar_t__ data_dma_ch; int data_buff_phys; int * data_buff; scalar_t__ data_desc_addr; void* data_desc; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int DMA_PRIO_LOW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BUFF_SIZE ;
 int dev_err (int *,char*) ;
 int * dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int * kmalloc (int,int ) ;
 int pxa3xx_nand_data_dma_irq ;
 scalar_t__ pxa_request_dma (char*,int ,int ,struct pxa3xx_nand_info*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static int pxa3xx_nand_init_buff(struct pxa3xx_nand_info *info)
{
 struct platform_device *pdev = info->pdev;
 int data_desc_offset = MAX_BUFF_SIZE - sizeof(struct pxa_dma_desc);

 if (use_dma == 0) {
  info->data_buff = kmalloc(MAX_BUFF_SIZE, GFP_KERNEL);
  if (info->data_buff == ((void*)0))
   return -ENOMEM;
  return 0;
 }

 info->data_buff = dma_alloc_coherent(&pdev->dev, MAX_BUFF_SIZE,
    &info->data_buff_phys, GFP_KERNEL);
 if (info->data_buff == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate dma buffer\n");
  return -ENOMEM;
 }

 info->data_buff_size = MAX_BUFF_SIZE;
 info->data_desc = (void *)info->data_buff + data_desc_offset;
 info->data_desc_addr = info->data_buff_phys + data_desc_offset;

 info->data_dma_ch = pxa_request_dma("nand-data", DMA_PRIO_LOW,
    pxa3xx_nand_data_dma_irq, info);
 if (info->data_dma_ch < 0) {
  dev_err(&pdev->dev, "failed to request data dma\n");
  dma_free_coherent(&pdev->dev, info->data_buff_size,
    info->data_buff, info->data_buff_phys);
  return info->data_dma_ch;
 }

 return 0;
}
