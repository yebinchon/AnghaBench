
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dma_info {scalar_t__ d64txregbase; scalar_t__ d64rxregbase; int core; } ;


 int DMA64RXREGOFFS (struct dma_info*,int ) ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int addrlow ;
 scalar_t__ bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int) ;

__attribute__((used)) static bool _dma_descriptor_align(struct dma_info *di)
{
 u32 addrl;


 if (di->d64txregbase != 0) {
  bcma_write32(di->core, DMA64TXREGOFFS(di, addrlow), 0xff0);
  addrl = bcma_read32(di->core, DMA64TXREGOFFS(di, addrlow));
  if (addrl != 0)
   return 0;
 } else if (di->d64rxregbase != 0) {
  bcma_write32(di->core, DMA64RXREGOFFS(di, addrlow), 0xff0);
  addrl = bcma_read32(di->core, DMA64RXREGOFFS(di, addrlow));
  if (addrl != 0)
   return 0;
 }
 return 1;
}
