
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_info {scalar_t__ nrxd; int core; int name; } ;


 int D64_RS0_CD_MASK ;
 int DMA64RXREGOFFS (struct dma_info*,int ) ;
 int bcma_read32 (int ,int ) ;
 int brcms_dbg_dma (int ,char*,int ) ;
 int ptr ;
 int status0 ;

__attribute__((used)) static bool dma64_rxidle(struct dma_info *di)
{
 brcms_dbg_dma(di->core, "%s:\n", di->name);

 if (di->nrxd == 0)
  return 1;

 return ((bcma_read32(di->core,
        DMA64RXREGOFFS(di, status0)) & D64_RS0_CD_MASK) ==
  (bcma_read32(di->core, DMA64RXREGOFFS(di, ptr)) &
   D64_RS0_CD_MASK));
}
