
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ nrxd; int core; } ;


 int D64_RS0_RS_DISABLED ;
 int D64_RS0_RS_MASK ;
 int DMA64RXREGOFFS (struct dma_info*,int ) ;
 int SPINWAIT (int,int) ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int ) ;
 int control ;
 int status0 ;

bool dma_rxreset(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 u32 status;

 if (di->nrxd == 0)
  return 1;

 bcma_write32(di->core, DMA64RXREGOFFS(di, control), 0);
 SPINWAIT(((status =
     (bcma_read32(di->core, DMA64RXREGOFFS(di, status0)) &
      D64_RS0_RS_MASK)) != D64_RS0_RS_DISABLED), 10000);

 return status == D64_RS0_RS_DISABLED;
}
