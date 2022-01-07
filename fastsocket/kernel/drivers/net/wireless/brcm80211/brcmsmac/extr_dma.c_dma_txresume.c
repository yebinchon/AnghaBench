
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ ntxd; int core; int name; } ;


 int D64_XC_SE ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int bcma_mask32 (int ,int ,int ) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int control ;

void dma_txresume(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;

 brcms_dbg_dma(di->core, "%s:\n", di->name);

 if (di->ntxd == 0)
  return;

 bcma_mask32(di->core, DMA64TXREGOFFS(di, control), ~D64_XC_SE);
}
