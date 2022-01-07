
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mcp_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mcp_sa11x0 {int dummy; } ;
struct mcp_plat_data {int sclk_rate; int mccr0; int mccr1; } ;
struct mcp {int sclk_rate; int rw_timeout; int dma_telco_wr; int dma_telco_rd; int dma_audio_wr; int dma_audio_rd; int * ops; int owner; } ;


 int ASSABET_BCR_CODEC_RST ;
 int ASSABET_BCR_set (int ) ;
 int DMA_Ser4MCP0Rd ;
 int DMA_Ser4MCP0Wr ;
 int DMA_Ser4MCP1Rd ;
 int DMA_Ser4MCP1Wr ;
 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int PPC_RXD4 ;
 int PPC_SCLK ;
 int PPC_SFRM ;
 int PPC_TXD4 ;
 int PPDR ;
 int PPSR ;
 int PSDR ;
 int Ser4MCCR0 ;
 int Ser4MCCR1 ;
 int Ser4MCSR ;
 int THIS_MODULE ;
 scalar_t__ machine_is_assabet () ;
 struct mcp* mcp_host_alloc (TYPE_1__*,int) ;
 int mcp_host_register (struct mcp*) ;
 int mcp_sa11x0 ;
 int platform_set_drvdata (struct platform_device*,struct mcp*) ;
 int release_mem_region (int,int) ;
 int request_mem_region (int,int,char*) ;

__attribute__((used)) static int mcp_sa11x0_probe(struct platform_device *pdev)
{
 struct mcp_plat_data *data = pdev->dev.platform_data;
 struct mcp *mcp;
 int ret;

 if (!data)
  return -ENODEV;

 if (!request_mem_region(0x80060000, 0x60, "sa11x0-mcp"))
  return -EBUSY;

 mcp = mcp_host_alloc(&pdev->dev, sizeof(struct mcp_sa11x0));
 if (!mcp) {
  ret = -ENOMEM;
  goto release;
 }

 mcp->owner = THIS_MODULE;
 mcp->ops = &mcp_sa11x0;
 mcp->sclk_rate = data->sclk_rate;
 mcp->dma_audio_rd = DMA_Ser4MCP0Rd;
 mcp->dma_audio_wr = DMA_Ser4MCP0Wr;
 mcp->dma_telco_rd = DMA_Ser4MCP1Rd;
 mcp->dma_telco_wr = DMA_Ser4MCP1Wr;

 platform_set_drvdata(pdev, mcp);

 if (machine_is_assabet()) {
  ASSABET_BCR_set(ASSABET_BCR_CODEC_RST);
 }




 PPDR &= ~PPC_RXD4;
 PPDR |= PPC_TXD4 | PPC_SCLK | PPC_SFRM;
 PSDR |= PPC_RXD4;
 PSDR &= ~(PPC_TXD4 | PPC_SCLK | PPC_SFRM);
 PPSR &= ~(PPC_TXD4 | PPC_SCLK | PPC_SFRM);





 Ser4MCSR = -1;
 Ser4MCCR1 = data->mccr1;
 Ser4MCCR0 = data->mccr0 | 0x7f7f;






 mcp->rw_timeout = (64 * 3 * 1000000 + mcp->sclk_rate - 1) /
     mcp->sclk_rate;

 ret = mcp_host_register(mcp);
 if (ret == 0)
  goto out;

 release:
 release_mem_region(0x80060000, 0x60);
 platform_set_drvdata(pdev, ((void*)0));

 out:
 return ret;
}
