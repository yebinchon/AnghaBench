
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ ntxd; int core; } ;


 int D64_XC_SE ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int bcma_read32 (int ,int ) ;
 int control ;

bool dma_txsuspended(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;

 return (di->ntxd == 0) ||
        ((bcma_read32(di->core,
        DMA64TXREGOFFS(di, control)) & D64_XC_SE) ==
  D64_XC_SE);
}
