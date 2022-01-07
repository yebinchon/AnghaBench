
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dma_chan {int id; int dev; scalar_t__ desc_pool; } ;
struct fsl_desc_sw {int dummy; } ;
struct dma_chan {int dummy; } ;


 int dev_err (int ,char*,int ) ;
 scalar_t__ dma_pool_create (char*,int ,int,int,int ) ;
 struct fsl_dma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static int fsl_dma_alloc_chan_resources(struct dma_chan *chan)
{
 struct fsl_dma_chan *fsl_chan = to_fsl_chan(chan);


 if (fsl_chan->desc_pool)
  return 1;




 fsl_chan->desc_pool = dma_pool_create("fsl_dma_engine_desc_pool",
   fsl_chan->dev, sizeof(struct fsl_desc_sw),
   32, 0);
 if (!fsl_chan->desc_pool) {
  dev_err(fsl_chan->dev, "No memory for channel %d "
   "descriptor dma pool.\n", fsl_chan->id);
  return 0;
 }

 return 1;
}
