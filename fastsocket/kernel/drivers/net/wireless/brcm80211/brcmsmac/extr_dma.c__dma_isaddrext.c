
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_info {scalar_t__ d64txregbase; scalar_t__ d64rxregbase; int name; int core; } ;


 int DMA64RXREGOFFS (struct dma_info*,int ) ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int _dma64_addrext (struct dma_info*,int ) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int control ;

__attribute__((used)) static bool _dma_isaddrext(struct dma_info *di)
{



 if (di->d64txregbase != 0) {
  if (!_dma64_addrext(di, DMA64TXREGOFFS(di, control)))
   brcms_dbg_dma(di->core,
          "%s: DMA64 tx doesn't have AE set\n",
          di->name);
  return 1;
 } else if (di->d64rxregbase != 0) {
  if (!_dma64_addrext(di, DMA64RXREGOFFS(di, control)))
   brcms_dbg_dma(di->core,
          "%s: DMA64 rx doesn't have AE set\n",
          di->name);
  return 1;
 }

 return 0;
}
