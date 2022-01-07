
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_pub {int dummy; } ;
struct dma_info {scalar_t__ ntxd; int core; } ;


 int D64_XC_SE ;
 int D64_XS0_XS_DISABLED ;
 int D64_XS0_XS_IDLE ;
 int D64_XS0_XS_MASK ;
 int D64_XS0_XS_STOPPED ;
 int DMA64TXREGOFFS (struct dma_info*,int ) ;
 int SPINWAIT (int,int) ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int ) ;
 int control ;
 int status0 ;
 int udelay (int) ;

bool dma_txreset(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;
 u32 status;

 if (di->ntxd == 0)
  return 1;


 bcma_write32(di->core, DMA64TXREGOFFS(di, control), D64_XC_SE);
 SPINWAIT(((status =
     (bcma_read32(di->core, DMA64TXREGOFFS(di, status0)) &
      D64_XS0_XS_MASK)) != D64_XS0_XS_DISABLED) &&
    (status != D64_XS0_XS_IDLE) && (status != D64_XS0_XS_STOPPED),
   10000);

 bcma_write32(di->core, DMA64TXREGOFFS(di, control), 0);
 SPINWAIT(((status =
     (bcma_read32(di->core, DMA64TXREGOFFS(di, status0)) &
      D64_XS0_XS_MASK)) != D64_XS0_XS_DISABLED), 10000);


 udelay(300);

 return status == D64_XS0_XS_DISABLED;
}
